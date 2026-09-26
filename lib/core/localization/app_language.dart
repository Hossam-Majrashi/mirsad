import 'package:flutter/material.dart';

class AppLanguage {
  final String nativeLanguageName;
  final String code;
  final bool isRtl;

  const AppLanguage({
    required this.nativeLanguageName,
    required this.code,
    required this.isRtl,
  });

  Locale get locale {
    if (code.contains('-')) {
      final parts = code.split('-');
      return Locale(parts[0], parts[1]);
    }
    return Locale(code);
  }

  TextDirection get direction => isRtl ? TextDirection.rtl : TextDirection.ltr;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppLanguage && runtimeType == other.runtimeType && code == other.code;

  @override
  int get hashCode => code.hashCode;

  static const AppLanguage arabic = AppLanguage(
    nativeLanguageName: 'Arabic',
    code: 'ar',
    isRtl: true,
  );

  static const AppLanguage english = AppLanguage(
    nativeLanguageName: 'English',
    code: 'en',
    isRtl: false,
  );

  static AppLanguage fromCode(String? code) {
    if (code == null) return arabic;
    final clean = code.trim();
    for (final lang in supportedLanguages) {
      if (lang.code == clean) return lang;
    }
    final lower = clean.toLowerCase();
    for (final lang in supportedLanguages) {
      if (lang.code.toLowerCase() == lower) return lang;
    }
    for (final lang in supportedLanguages) {
      if (lang.nativeLanguageName.toLowerCase() == lower) {
        return lang;
      }
    }
    final prefix = lower.split('-').first;
    for (final lang in supportedLanguages) {
      if (lang.code.toLowerCase().split('-').first == prefix) return lang;
    }
    return arabic;
  }

  static const List<AppLanguage> supportedLanguages = [
    // 1
    AppLanguage(
      nativeLanguageName: 'Arabic',
      code: 'ar',
      isRtl: true,
    ),

    // 2
    AppLanguage(
      nativeLanguageName: 'English',
      code: 'en',
      isRtl: false,
    ),

    // 3
    AppLanguage(
      nativeLanguageName: 'Urdu',
      code: 'ur',
      isRtl: true,
    ),

    // 4
    AppLanguage(
      nativeLanguageName: 'Indonesian',
      code: 'id',
      isRtl: false,
    ),

    // 5
    AppLanguage(
      nativeLanguageName: 'Bengali',
      code: 'bn',
      isRtl: false,
    ),

    // 6
    AppLanguage(
      nativeLanguageName: 'Turkish',
      code: 'tr',
      isRtl: false,
    ),

    // 7
    AppLanguage(
      nativeLanguageName: 'Persian',
      code: 'fa',
      isRtl: true,
    ),

    // 8
    AppLanguage(
      nativeLanguageName: 'Malay',
      code: 'ms',
      isRtl: false,
    ),

    // 9
    AppLanguage(
      nativeLanguageName: 'Pashto',
      code: 'ps',
      isRtl: true,
    ),

    // 10
    AppLanguage(
      nativeLanguageName: 'Punjabi',
      code: 'pa',
      isRtl: false,
    ),

    // 11
    AppLanguage(
      nativeLanguageName: 'Sindhi',
      code: 'sd',
      isRtl: true,
    ),

    // 12
    AppLanguage(
      nativeLanguageName: 'Hindi',
      code: 'hi',
      isRtl: false,
    ),

    // 13
    AppLanguage(
      nativeLanguageName: 'Malayalam',
      code: 'ml',
      isRtl: false,
    ),

    // 14
    AppLanguage(
      nativeLanguageName: 'Tamil',
      code: 'ta',
      isRtl: false,
    ),

    // 15
    AppLanguage(
      nativeLanguageName: 'Telugu',
      code: 'te',
      isRtl: false,
    ),

    // 16
    AppLanguage(
      nativeLanguageName: 'Somali',
      code: 'so',
      isRtl: false,
    ),

    // 17
    AppLanguage(
      nativeLanguageName: 'Hausa',
      code: 'ha',
      isRtl: false,
    ),

    // 18
    AppLanguage(
      nativeLanguageName: 'Swahili',
      code: 'sw',
      isRtl: false,
    ),

    // 19
    AppLanguage(
      nativeLanguageName: 'Azerbaijani',
      code: 'az',
      isRtl: false,
    ),

    // 20
    AppLanguage(
      nativeLanguageName: 'Uzbek',
      code: 'uz',
      isRtl: false,
    ),

    // 21
    AppLanguage(
      nativeLanguageName: 'Kazakh',
      code: 'kk',
      isRtl: false,
    ),

    // 22
    AppLanguage(
      nativeLanguageName: 'Kyrgyz',
      code: 'ky',
      isRtl: false,
    ),

    // 23
    AppLanguage(
      nativeLanguageName: 'Bosnian',
      code: 'bs',
      isRtl: false,
    ),

    // 24
    AppLanguage(
      nativeLanguageName: 'French',
      code: 'fr',
      isRtl: false,
    ),

    // 25
    AppLanguage(
      nativeLanguageName: 'Russian',
      code: 'ru',
      isRtl: false,
    ),

    // 26
    AppLanguage(
      nativeLanguageName: 'German',
      code: 'de',
      isRtl: false,
    ),

    // 27
    AppLanguage(
      nativeLanguageName: 'Spanish',
      code: 'es',
      isRtl: false,
    ),

    // 28
    AppLanguage(
      nativeLanguageName: 'Italian',
      code: 'it',
      isRtl: false,
    ),

    // 29
    AppLanguage(
      nativeLanguageName: 'Portuguese',
      code: 'pt',
      isRtl: false,
    ),

    // 30
    AppLanguage(
      nativeLanguageName: 'Chinese (Simplified)',
      code: 'zh',
      isRtl: false,
    ),

    // 31
    AppLanguage(
      nativeLanguageName: 'Chinese (Traditional)',
      code: 'zh-TW',
      isRtl: false,
    ),

    // 32
    AppLanguage(
      nativeLanguageName: 'Japanese',
      code: 'ja',
      isRtl: false,
    ),

    // 33
    AppLanguage(
      nativeLanguageName: 'Korean',
      code: 'ko',
      isRtl: false,
    ),

    // 34
    AppLanguage(
      nativeLanguageName: 'Kurdish',
      code: 'ku',
      isRtl: true,
    ),

    // 35
    AppLanguage(
      nativeLanguageName: 'Gujarati',
      code: 'gu',
      isRtl: false,
    ),

    // 36
    AppLanguage(
      nativeLanguageName: 'Marathi',
      code: 'mr',
      isRtl: false,
    ),

    // 37
    AppLanguage(
      nativeLanguageName: 'Dutch',
      code: 'nl',
      isRtl: false,
    ),

    // 38
    AppLanguage(
      nativeLanguageName: 'Polish',
      code: 'pl',
      isRtl: false,
    ),

    // 39
    AppLanguage(
      nativeLanguageName: 'Romanian',
      code: 'ro',
      isRtl: false,
    ),

    // 40
    AppLanguage(
      nativeLanguageName: 'Greek',
      code: 'el',
      isRtl: false,
    ),

    // 41
    AppLanguage(
      nativeLanguageName: 'Amharic',
      code: 'am',
      isRtl: false,
    ),

    // 42
    AppLanguage(
      nativeLanguageName: 'Nepali',
      code: 'ne',
      isRtl: false,
    ),

    // 43
    AppLanguage(
      nativeLanguageName: 'Yoruba',
      code: 'yo',
      isRtl: false,
    ),

    // 44
    AppLanguage(
      nativeLanguageName: 'Filipino',
      code: 'fil',
      isRtl: false,
    ),

    // 45
    AppLanguage(
      nativeLanguageName: 'Burmese',
      code: 'my',
      isRtl: false,
    ),

    // 46
    AppLanguage(
      nativeLanguageName: 'Vietnamese',
      code: 'vi',
      isRtl: false,
    ),

    // 47
    AppLanguage(
      nativeLanguageName: 'Thai',
      code: 'th',
      isRtl: false,
    ),

    // 48
    AppLanguage(
      nativeLanguageName: 'Ukrainian',
      code: 'uk',
      isRtl: false,
    ),

    // 49
    AppLanguage(
      nativeLanguageName: 'Nigerian Pidgin',
      code: 'pcm',
      isRtl: false,
    ),
  ];
}
