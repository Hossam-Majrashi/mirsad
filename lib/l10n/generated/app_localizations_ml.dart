// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'മൾട്ടി-എഞ്ചിൻ ഫയൽ സുരക്ഷാ സ്കാനർ';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'മാൽവെയറുകളും ഭീഷണികളും കണ്ടെത്തുന്നതിനായി ഒന്നിലധികം സമാന്തര സുരക്ഷാ എഞ്ചിനുകളിലൂടെ ഫയലുകൾ വിശകലനം ചെയ്യുന്ന നൂതന സുരക്ഷാ പ്ലാറ്റ്‌ഫോമാണ് Mirsad.';

  @override
  String get splashGetStarted => 'സ്കാൻ ആരംഭിക്കുക';

  @override
  String get btnNext => 'അടുത്തത്';

  @override
  String get btnSkip => 'ഒഴിവാക്കുക';

  @override
  String get btnBack => 'പിന്നോട്ട്';

  @override
  String get btnCancel => 'റദ്ദാക്കുക';

  @override
  String get btnConfirm => 'സ്ഥിരീകരിക്കുക';

  @override
  String get btnDone => 'പൂർത്തിയായി';

  @override
  String get btnSave => 'സംരക്ഷിക്കുക';

  @override
  String get btnProceed => 'തുടരുക';

  @override
  String get btnRescan => 'വീണ്ടും സ്കാൻ ചെയ്യുക';

  @override
  String get selectLanguage => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get searchLanguage => 'ഭാഷ തിരയുക...';

  @override
  String get selectTheme => 'തീമും രൂപവും';

  @override
  String get chooseThemeSubtitle =>
      'സുഖകരമായ അനുഭവത്തിനായി നിങ്ങളുടെ ഇഷ്ടപ്പെട്ട തീം തിരഞ്ഞെടുക്കുക';

  @override
  String get themeDark => 'ഡാർക്ക് മോഡ്';

  @override
  String get themeLight => 'ലൈറ്റ് മോഡ്';

  @override
  String get themeSystem => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'പുതിയ സ്കാൻ';

  @override
  String get settings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get scanHistory => 'സ്കാൻ ചരിത്രം';

  @override
  String get noScanHistory => 'മുൻകാല സ്കാനുകൾ ലഭ്യമല്ല';

  @override
  String get noScanHistorySubtitle =>
      'സുരക്ഷാ എഞ്ചിനുകളിൽ സ്കാൻ ചെയ്യാൻ ഒരു ഫയൽ തിരഞ്ഞെടുക്കുക';

  @override
  String get selectFile => 'ഫയൽ തിരഞ്ഞെടുക്കുക';

  @override
  String get dragDropFile =>
      'ഫയൽ ഇവിടെ വലിച്ചിടുക, അല്ലെങ്കിൽ ബ്രൗസ് ചെയ്യാൻ ക്ലിക്ക് ചെയ്യുക';

  @override
  String get computingHashes => 'ക്രിപ്റ്റോഗ്രാഫിക് ഹാഷുകൾ കണക്കാക്കുന്നു...';

  @override
  String get scanningEngines => 'സുരക്ഷാ എഞ്ചിനുകളിൽ സ്കാൻ ചെയ്യുന്നു...';

  @override
  String get uploadConfirmTitle => 'ഫയൽ അപ്‌ലോഡ് സ്ഥിരീകരിക്കുക';

  @override
  String get uploadConfirmDesc =>
      'ഈ ഫയൽ ഹാഷിനായി മുൻകാല റിപ്പോർട്ടുകൾ ഒന്നും ലഭ്യമല്ല. ആഴത്തിലുള്ള വിശകലനത്തിനായി ഫയൽ അപ്‌ലോഡ് ചെയ്യാൻ താൽപ്പര്യമുണ്ടോ?';

  @override
  String get hashOnlyMode => 'ഹാഷ് തിരയൽ മാത്രം (കർശന സ്വകാര്യതാ മോഡ്)';

  @override
  String get fullUploadMode => 'ഫയൽ അപ്‌ലോഡും ആഴത്തിലുള്ള സ്കാനും';

  @override
  String get summaryTitle => 'സ്കാൻ സംഗ്രഹം';

  @override
  String get fileName => 'ഫയലിന്റെ പേര്';

  @override
  String get fileSize => 'ഫയൽ വലുപ്പം';

  @override
  String get hashSha256 => 'SHA-256 ഹാഷ്';

  @override
  String get hashSha1 => 'SHA-1 ഹാഷ്';

  @override
  String get hashMd5 => 'MD5 ഹാഷ്';

  @override
  String get aggregatedVerdict => 'മൊത്തത്തിലുള്ള വിധി';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total ദാതാക്കളിൽ $flagged എണ്ണം ഈ ഫയൽ അപകടകരമാണെന്ന് കണ്ടെത്തി';
  }

  @override
  String get verdictClean => 'സുരക്ഷിതം';

  @override
  String get verdictSuspicious => 'സംശയാസ്പദം';

  @override
  String get verdictMalicious => 'ഹാനികരം';

  @override
  String get verdictUnknown => 'അജ്ഞാതം';

  @override
  String get verdictError => 'പിശക്';

  @override
  String get statusQueued => 'വരിയിൽ';

  @override
  String get statusScanning => 'സ്കാൻ ചെയ്യുന്നു...';

  @override
  String get statusCompleted => 'പൂർത്തിയായി';

  @override
  String get statusFailed => 'പരാജയപ്പെട്ടു';

  @override
  String get viewFullReport => 'പൂർണ്ണ റിപ്പോർട്ട് ബ്രൗസറിൽ കാണുക';

  @override
  String get engineFindings => 'എഞ്ചിൻ കണ്ടെത്തലുകളുടെ വിശദാംശങ്ങൾ';

  @override
  String get engineName => 'എഞ്ചിൻ';

  @override
  String get engineCategory => 'വിഭാഗം';

  @override
  String get engineResult => 'ഫലം';

  @override
  String get fileSizeExceeded => 'ഫയൽ വലുപ്പം പരിധി കവിഞ്ഞു';

  @override
  String get shareReport => 'റിപ്പോർട്ട് പങ്കിടുക';

  @override
  String get settingsProviders => 'സുരക്ഷാ ദാതാക്കൾ';

  @override
  String get settingsPrivacy => 'സ്വകാര്യതാ ക്രമീകരണങ്ങൾ';

  @override
  String get hashFirstTitle => 'ആദ്യം ഹാഷ് മോഡ്';

  @override
  String get hashFirstDesc => 'അപ്‌ലോഡ് ചെയ്യുന്നതിന് മുമ്പ് ഹാഷ് പരിശോധിക്കുക';

  @override
  String get clearHistory => 'ചരിത്രം മായ്‌ക്കുക';

  @override
  String get clearHistoryConfirm =>
      'എല്ലാ മുൻകാല സ്കാൻ ചരിത്രവും മായ്‌ക്കണമെന്ന് ഉറപ്പാണോ?';

  @override
  String get historyCleared => 'സ്കാൻ ചരിത്രം വിജയകരമായി മായ്‌ച്ചു';

  @override
  String get devSectionTitle => 'ഡെവലപ്പർ വിവരങ്ങൾ';

  @override
  String get email => 'ഇമെയിൽ';

  @override
  String get website => 'വെബ്സൈറ്റ്';

  @override
  String get copiedToClipboard => 'ക്ലിപ്പ്ബോർഡിലേക്ക് പകർത്തി';

  @override
  String get copyHash => 'പകർത്തുക';

  @override
  String get themeDarkSubtitle => 'പശ്ചാത്തലം #212327 • ബട്ടണുകൾ #232627';

  @override
  String get themeLightSubtitle => 'പശ്ചാത്തലം #EFEEF1 • ബട്ടണുകൾ #FEFEFE';

  @override
  String get themeSystemSubtitle => 'സിസ്റ്റം രൂപത്തിനനുസരിച്ച്';
}
