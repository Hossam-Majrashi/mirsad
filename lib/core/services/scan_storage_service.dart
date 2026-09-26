import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/scanned_file_record.dart';

class ScanStorageService {
  static final ScanStorageService instance = ScanStorageService._();
  ScanStorageService._();

  static const String _keyScanHistory = 'mirsad_scan_history_v1';
  static const String _keyThemeMode = 'mirsad_theme_mode';
  static const String _keyLanguageCode = 'mirsad_language_code';
  static const String _keyOnboardingDone = 'mirsad_onboarding_completed';
  static const String _keyHashFirstMode = 'mirsad_hash_first_mode';
  static const String _keyEnabledProviders = 'mirsad_enabled_providers';

  late SharedPreferences _prefs;
  bool _isInit = false;

  Future<void> init() async {
    if (_isInit) return;
    _prefs = await SharedPreferences.getInstance();
    _isInit = true;
  }

  // --- Scan History ---

  Future<List<ScannedFileRecord>> loadScanHistory() async {
    await init();
    final jsonStr = _prefs.getString(_keyScanHistory);
    if (jsonStr == null || jsonStr.isEmpty) return [];

    try {
      final List<dynamic> list = json.decode(jsonStr);
      return list.map((item) => ScannedFileRecord.fromJson(item as Map<String, dynamic>)).toList();
    } catch (_) {
      return [];
    }
  }

  Future<void> saveScanRecord(ScannedFileRecord record) async {
    await init();
    final history = await loadScanHistory();
    final idx = history.indexWhere((r) => r.id == record.id || r.sha256 == record.sha256);
    if (idx >= 0) {
      history[idx] = record;
    } else {
      history.insert(0, record);
    }
    await _persistHistory(history);
  }

  Future<void> updateScanRecord(ScannedFileRecord record) async {
    await init();
    final history = await loadScanHistory();
    final idx = history.indexWhere((r) => r.id == record.id);
    if (idx >= 0) {
      history[idx] = record;
      await _persistHistory(history);
    } else {
      await saveScanRecord(record);
    }
  }

  Future<void> deleteScanRecord(String id) async {
    await init();
    final history = await loadScanHistory();
    history.removeWhere((r) => r.id == id);
    await _persistHistory(history);
  }

  Future<void> clearAllHistory() async {
    await init();
    await _prefs.remove(_keyScanHistory);
  }

  Future<void> _persistHistory(List<ScannedFileRecord> history) async {
    final list = history.map((r) => r.toJson()).toList();
    await _prefs.setString(_keyScanHistory, json.encode(list));
  }

  // --- Settings & Preferences ---

  Future<bool> isOnboardingCompleted() async {
    await init();
    return _prefs.getBool(_keyOnboardingDone) ?? false;
  }

  Future<void> setOnboardingCompleted(bool value) async {
    await init();
    await _prefs.setBool(_keyOnboardingDone, value);
  }

  Future<String> getThemeMode() async {
    await init();
    return _prefs.getString(_keyThemeMode) ?? 'dark'; // Dark is default as specified
  }

  Future<void> setThemeMode(String mode) async {
    await init();
    await _prefs.setString(_keyThemeMode, mode);
  }

  Future<String> getLanguageCode() async {
    await init();
    return _prefs.getString(_keyLanguageCode) ?? 'ar'; // Arabic is default
  }

  Future<void> setLanguageCode(String code) async {
    await init();
    await _prefs.setString(_keyLanguageCode, code);
  }

  Future<bool> isHashFirstMode() async {
    await init();
    return _prefs.getBool(_keyHashFirstMode) ?? true; // Default true
  }

  Future<void> setHashFirstMode(bool value) async {
    await init();
    await _prefs.setBool(_keyHashFirstMode, value);
  }

  Future<List<String>> getEnabledProviders() async {
    await init();
    return _prefs.getStringList(_keyEnabledProviders) ?? [];
  }

  Future<void> setEnabledProviders(List<String> providerIds) async {
    await init();
    await _prefs.setStringList(_keyEnabledProviders, providerIds);
  }
}
