import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// Fallback Material Localizations Delegate to support all 49 locales seamlessly,
/// even when a locale is not natively included in Flutter SDK's internal GlobalMaterialLocalizations.
class FallbackMaterialLocalizationsDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    if (GlobalMaterialLocalizations.delegate.isSupported(locale)) {
      try {
        return await GlobalMaterialLocalizations.delegate.load(locale);
      } catch (_) {}
    }
    // Fallback to default material localizations
    return const DefaultMaterialLocalizations();
  }

  @override
  bool shouldReload(FallbackMaterialLocalizationsDelegate old) => false;
}

/// Fallback Cupertino Localizations Delegate for all 49 locales
class FallbackCupertinoLocalizationsDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    if (GlobalCupertinoLocalizations.delegate.isSupported(locale)) {
      try {
        return await GlobalCupertinoLocalizations.delegate.load(locale);
      } catch (_) {}
    }
    return const DefaultCupertinoLocalizations();
  }

  @override
  bool shouldReload(FallbackCupertinoLocalizationsDelegate old) => false;
}
