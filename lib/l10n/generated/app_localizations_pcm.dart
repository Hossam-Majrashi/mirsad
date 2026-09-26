// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nigerian Pidgin (`pcm`).
class AppLocalizationsPcm extends AppLocalizations {
  AppLocalizationsPcm([String locale = 'pcm']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Multi-Engine File Security Scanner';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad na beta security platform wey dey check and analyze files across plenti engines to catch virus and bad tins.';

  @override
  String get splashGetStarted => 'Start to Scan';

  @override
  String get btnNext => 'Next';

  @override
  String get btnSkip => 'Skip am';

  @override
  String get btnBack => 'Go Back';

  @override
  String get btnCancel => 'Cancel';

  @override
  String get btnConfirm => 'Confirm am';

  @override
  String get btnDone => 'E don do';

  @override
  String get btnSave => 'Save am';

  @override
  String get btnProceed => 'Continue';

  @override
  String get btnRescan => 'Scan am again';

  @override
  String get selectLanguage => 'Pick Language';

  @override
  String get searchLanguage => 'Find language...';

  @override
  String get selectTheme => 'Theme & How E Dey Look';

  @override
  String get chooseThemeSubtitle =>
      'Pick wetin eye go like so dat body go sweet you';

  @override
  String get themeDark => 'Dark Mode';

  @override
  String get themeLight => 'Light Mode';

  @override
  String get themeSystem => 'System Default';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'New Scan';

  @override
  String get settings => 'Settings';

  @override
  String get scanHistory => 'Scan History';

  @override
  String get noScanHistory => 'No scan history yet';

  @override
  String get noScanHistorySubtitle =>
      'Pick one file make security engines scan am';

  @override
  String get selectFile => 'Pick File';

  @override
  String get dragDropFile => 'Drag and drop file here, or click to browse';

  @override
  String get computingHashes =>
      'Dey calculate cryptographic hashes (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Engines dey scan your file now...';

  @override
  String get uploadConfirmTitle => 'Confirm File Upload';

  @override
  String get uploadConfirmDesc =>
      'We no see any old report for this file hash. You wan upload make dem scan am properly?';

  @override
  String get hashOnlyMode => 'Check Hash Only (Strict Privacy)';

  @override
  String get fullUploadMode => 'Upload File & Deep Scan';

  @override
  String get summaryTitle => 'Scan Summary';

  @override
  String get fileName => 'File Name';

  @override
  String get fileSize => 'File Size';

  @override
  String get hashSha256 => 'SHA-256 Hash';

  @override
  String get hashSha1 => 'SHA-1 Hash';

  @override
  String get hashMd5 => 'MD5 Hash';

  @override
  String get aggregatedVerdict => 'Final Result';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged out of $total providers talk say this file get wahala';
  }

  @override
  String get verdictClean => 'Clean';

  @override
  String get verdictSuspicious => 'Doubtful';

  @override
  String get verdictMalicious => 'Dangerous';

  @override
  String get verdictUnknown => 'Nobody know';

  @override
  String get verdictError => 'Error';

  @override
  String get statusQueued => 'Dey for line';

  @override
  String get statusScanning => 'Dey scan...';

  @override
  String get statusCompleted => 'Don finish';

  @override
  String get statusFailed => 'E fail';

  @override
  String get viewFullReport => 'See Full Report for Browser';

  @override
  String get engineFindings => 'Engine Details';

  @override
  String get engineName => 'Engine';

  @override
  String get engineCategory => 'Category';

  @override
  String get engineResult => 'Result';

  @override
  String get fileSizeExceeded => 'File size big pass limit';

  @override
  String get shareReport => 'Share Report';

  @override
  String get settingsProviders => 'Security Providers';

  @override
  String get settingsPrivacy => 'Privacy Settings';

  @override
  String get hashFirstTitle => 'Hash-First Mode';

  @override
  String get hashFirstDesc => 'Check hash first before upload';

  @override
  String get clearHistory => 'Clear History';

  @override
  String get clearHistoryConfirm =>
      'You sure say you wan delete all scan history?';

  @override
  String get historyCleared => 'All scan history don clear kpatakpata';

  @override
  String get devSectionTitle => 'Developer Info';

  @override
  String get email => 'Email';

  @override
  String get website => 'Website';

  @override
  String get copiedToClipboard => 'Don copy am to clipboard';

  @override
  String get copyHash => 'Copy';

  @override
  String get themeDarkSubtitle => 'Background #212327 • Buttons #232627';

  @override
  String get themeLightSubtitle => 'Background #EFEEF1 • Buttons #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Follow system look';
}
