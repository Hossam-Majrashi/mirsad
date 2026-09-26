import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:mirsad/core/services/app_settings_service.dart';
import 'package:mirsad/core/services/scan_coordinator.dart';
import 'package:mirsad/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('MirsadApp initial load smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: AppSettingsService.instance),
          ChangeNotifierProvider.value(value: ScanCoordinator.instance),
        ],
        child: const MirsadApp(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MirsadApp), findsOneWidget);
  });
}
