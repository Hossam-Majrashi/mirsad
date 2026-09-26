import 'package:flutter_test/flutter_test.dart';
import 'package:mirsad/core/localization/app_language.dart';
import 'package:mirsad/l10n/generated/app_localizations.dart';

void main() {
  group('49 Languages Localization Verification', () {
    test('Exactly 49 supported languages defined matching LLM.txt', () {
      expect(AppLanguage.supportedLanguages.length, equals(49));

      // Verify no duplicates
      final codes = AppLanguage.supportedLanguages.map((l) => l.code).toSet();
      expect(codes.length, equals(49));

      // Verify Hebrew is excluded
      expect(codes.contains('he'), isFalse);
      expect(codes.contains('iw'), isFalse);

      // Verify Saudi Arabic is excluded
      expect(codes.contains('ar-SA'), isFalse);

      // Verify Arabic is first and English is second
      expect(AppLanguage.supportedLanguages[0].code, equals('ar'));
      expect(AppLanguage.supportedLanguages[1].code, equals('en'));

      // Verify RTL languages
      final rtlCodes = AppLanguage.supportedLanguages.where((l) => l.isRtl).map((l) => l.code).toSet();
      expect(rtlCodes, equals({'ar', 'ur', 'fa', 'ps', 'sd', 'ku'}));
    });

    test('All 49 languages have working AppLocalizations and non-empty translations', () async {
      for (final lang in AppLanguage.supportedLanguages) {
        final locale = lang.locale;
        final localizations = await AppLocalizations.delegate.load(locale);

        expect(localizations, isNotNull, reason: 'Failed to load localizations for ${lang.code}');
        expect(localizations.appName.isNotEmpty, isTrue, reason: 'Empty appName for ${lang.code}');
        expect(localizations.appSubtitle.isNotEmpty, isTrue, reason: 'Empty appSubtitle for ${lang.code}');
        expect(localizations.selectLanguage.isNotEmpty, isTrue, reason: 'Empty selectLanguage for ${lang.code}');
        expect(localizations.themeDark.isNotEmpty, isTrue, reason: 'Empty themeDark for ${lang.code}');
        expect(localizations.themeLight.isNotEmpty, isTrue, reason: 'Empty themeLight for ${lang.code}');
        expect(localizations.themeSystem.isNotEmpty, isTrue, reason: 'Empty themeSystem for ${lang.code}');
        expect(localizations.verdictClean.isNotEmpty, isTrue, reason: 'Empty verdictClean for ${lang.code}');
        expect(localizations.verdictMalicious.isNotEmpty, isTrue, reason: 'Empty verdictMalicious for ${lang.code}');
        expect(localizations.verdictSuspicious.isNotEmpty, isTrue, reason: 'Empty verdictSuspicious for ${lang.code}');
        expect(localizations.verdictUnknown.isNotEmpty, isTrue, reason: 'Empty verdictUnknown for ${lang.code}');
        expect(localizations.copiedToClipboard.isNotEmpty, isTrue, reason: 'Empty copiedToClipboard for ${lang.code}');
        expect(localizations.copyHash.isNotEmpty, isTrue, reason: 'Empty copyHash for ${lang.code}');
      }
    });

    test('fromCode resolves valid language codes correctly', () {
      expect(AppLanguage.fromCode('ar').code, equals('ar'));
      expect(AppLanguage.fromCode('en').code, equals('en'));
      expect(AppLanguage.fromCode('zh-TW').code, equals('zh-TW'));
      expect(AppLanguage.fromCode('pcm').code, equals('pcm'));
      expect(AppLanguage.fromCode('invalid_code_fallback').code, equals('ar'));
    });
  });
}
