import 'dart:convert';
import 'package:flutter/services.dart';

class AppConfig {
  static final AppConfig instance = AppConfig._();
  AppConfig._();

  Map<String, String> _secrets = {};
  bool _isLoaded = false;

  Future<void> load() async {
    if (_isLoaded) return;
    try {
      final jsonString = await rootBundle.loadString('assets/config/secrets.json');
      final dynamic decoded = json.decode(jsonString);
      if (decoded is Map<String, dynamic>) {
        _secrets = decoded.map((k, v) => MapEntry(k, v.toString()));
      }
    } catch (_) {
      _secrets = {};
    }
    _isLoaded = true;
  }

  String getApiKey(String providerKey) {
    // 1. Check dart environment variables
    final envVal = String.fromEnvironment(providerKey, defaultValue: '');
    if (envVal.isNotEmpty) return envVal;

    // 2. Check loaded secrets
    final val = _secrets[providerKey] ?? _secrets['${providerKey}_api_key'] ?? '';
    if (val.isNotEmpty && !val.startsWith('YOUR_')) {
      return val;
    }
    return '';
  }

  bool hasKeyFor(String providerKey) {
    final key = getApiKey(providerKey);
    return key.isNotEmpty && !key.startsWith('YOUR_');
  }
}
