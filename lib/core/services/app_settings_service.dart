import 'package:flutter/material.dart';
import '../localization/app_language.dart';
import 'scan_storage_service.dart';

class AppSettingsService extends ChangeNotifier {
  static final AppSettingsService instance = AppSettingsService._();
  AppSettingsService._();

  AppLanguage _currentLanguage = AppLanguage.arabic;
  ThemeMode _themeMode = ThemeMode.dark;
  bool _hashFirstMode = true;
  bool _onboardingCompleted = false;

  AppLanguage get currentLanguage => _currentLanguage;
  Locale get currentLocale => _currentLanguage.locale;
  TextDirection get currentDirection => _currentLanguage.direction;
  ThemeMode get themeMode => _themeMode;
  bool get hashFirstMode => _hashFirstMode;
  bool get isOnboardingCompleted => _onboardingCompleted;

  Future<void> initialize() async {
    final langCode = await ScanStorageService.instance.getLanguageCode();
    _currentLanguage = AppLanguage.fromCode(langCode);

    final themeStr = await ScanStorageService.instance.getThemeMode();
    switch (themeStr) {
      case 'light':
        _themeMode = ThemeMode.light;
        break;
      case 'system':
        _themeMode = ThemeMode.system;
        break;
      case 'dark':
      default:
        _themeMode = ThemeMode.dark;
        break;
    }

    _hashFirstMode = await ScanStorageService.instance.isHashFirstMode();
    _onboardingCompleted = await ScanStorageService.instance.isOnboardingCompleted();
    notifyListeners();
  }

  Future<void> setLanguage(AppLanguage language) async {
    _currentLanguage = language;
    await ScanStorageService.instance.setLanguageCode(language.code);
    notifyListeners();
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
    String modeStr = 'dark';
    if (mode == ThemeMode.light) {
      modeStr = 'light';
    } else if (mode == ThemeMode.system) {
      modeStr = 'system';
    }
    await ScanStorageService.instance.setThemeMode(modeStr);
    notifyListeners();
  }

  Future<void> setHashFirstMode(bool enabled) async {
    _hashFirstMode = enabled;
    await ScanStorageService.instance.setHashFirstMode(enabled);
    notifyListeners();
  }

  Future<void> completeOnboarding() async {
    _onboardingCompleted = true;
    await ScanStorageService.instance.setOnboardingCompleted(true);
    notifyListeners();
  }
}
