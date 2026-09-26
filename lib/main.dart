import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import 'core/config/app_config.dart';
import 'core/localization/fallback_localizations_delegate.dart';
import 'core/services/app_settings_service.dart';
import 'core/services/intent_handler.dart';
import 'core/services/scan_coordinator.dart';
import 'core/services/scan_storage_service.dart';
import 'core/theme/app_theme.dart';
import 'l10n/generated/app_localizations.dart';
import 'screens/adaptive_screen_dispatcher.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1. Initialize configuration & services
  await AppConfig.instance.load();
  await ScanStorageService.instance.init();
  await AppSettingsService.instance.initialize();
  await ScanCoordinator.instance.initialize();

  // 2. Parse CLI args or platform share intent for auto-run file scan
  String? autoScanRecordId;
  final incomingPath = await IntentHandler.getIncomingFile(args);
  if (incomingPath != null && incomingPath.isNotEmpty) {
    try {
      final file = File(incomingPath);
      final record = await ScanCoordinator.instance.startScan(file: file);
      autoScanRecordId = record.id;
    } catch (_) {}
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppSettingsService.instance),
        ChangeNotifierProvider.value(value: ScanCoordinator.instance),
      ],
      child: MirsadApp(autoScanRecordId: autoScanRecordId),
    ),
  );
}

class MirsadApp extends StatelessWidget {
  final String? autoScanRecordId;

  const MirsadApp({super.key, this.autoScanRecordId});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<AppSettingsService>();

    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: settings.themeMode,
      locale: settings.currentLocale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        FallbackMaterialLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FallbackCupertinoLocalizationsDelegate(),
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: _determineInitialScreen(settings),
    );
  }

  Widget _determineInitialScreen(AppSettingsService settings) {
    // If launched with an incoming file argument/intent, skip home and jump straight to scan results
    if (autoScanRecordId != null) {
      return AdaptiveScanResultsScreen(recordId: autoScanRecordId!);
    }

    // Normal launch flow: if onboarding completed, go to home; else start onboarding
    if (settings.isOnboardingCompleted) {
      return const AdaptiveHomeScreen();
    }
    return const AdaptiveSplashScreen();
  }
}
