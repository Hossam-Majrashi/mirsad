// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Multi-Engine File Security Scanner';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad is an advanced defensive security platform for scanning and analyzing files across multiple parallel security engines to detect malware and threats.';

  @override
  String get splashGetStarted => 'Start Scanning';

  @override
  String get btnNext => 'Next';

  @override
  String get btnSkip => 'Skip';

  @override
  String get btnBack => 'Back';

  @override
  String get btnCancel => 'Cancel';

  @override
  String get btnConfirm => 'Confirm';

  @override
  String get btnDone => 'Done';

  @override
  String get btnSave => 'Save';

  @override
  String get btnProceed => 'Proceed';

  @override
  String get btnRescan => 'Rescan';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get selectTheme => 'Theme & Appearance';

  @override
  String get chooseThemeSubtitle =>
      'Choose your preferred theme for a comfortable experience';

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
  String get noScanHistory => 'No previous scans';

  @override
  String get noScanHistorySubtitle =>
      'Choose a file to start scanning across advanced security engines';

  @override
  String get selectFile => 'Choose File';

  @override
  String get dragDropFile => 'Drag and drop a file here, or click to browse';

  @override
  String get computingHashes =>
      'Computing cryptographic hashes (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Scanning across security engines...';

  @override
  String get uploadConfirmTitle => 'Confirm File Upload';

  @override
  String get uploadConfirmDesc =>
      'No prior report was found for this file\'s hash. Would you like to upload the file content to third-party engines for deep analysis?\n\nNotice: Uploading makes the file visible to the selected external service providers.';

  @override
  String get hashOnlyMode => 'Hash-only lookup (Strict Privacy Mode)';

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
  String get aggregatedVerdict => 'Aggregated Verdict';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged of $total providers flagged this file';
  }

  @override
  String get verdictClean => 'Clean';

  @override
  String get verdictSuspicious => 'Suspicious';

  @override
  String get verdictMalicious => 'Malicious';

  @override
  String get verdictUnknown => 'Unknown';

  @override
  String get verdictError => 'Error';

  @override
  String get statusQueued => 'Queued';

  @override
  String get statusScanning => 'Scanning...';

  @override
  String get statusCompleted => 'Completed';

  @override
  String get statusFailed => 'Failed';

  @override
  String get viewFullReport => 'View Full Report in Browser';

  @override
  String get engineFindings => 'Engine Findings Detail';

  @override
  String get engineName => 'Engine';

  @override
  String get engineCategory => 'Category';

  @override
  String get engineResult => 'Result';

  @override
  String get fileSizeExceeded => 'File size exceeds provider limit';

  @override
  String get shareReport => 'Share Report';

  @override
  String get settingsProviders => 'Security Providers';

  @override
  String get settingsPrivacy => 'Privacy Settings';

  @override
  String get hashFirstTitle => 'Hash-First Mode';

  @override
  String get hashFirstDesc => 'Query hash before requesting file upload';

  @override
  String get clearHistory => 'Clear Scan History';

  @override
  String get clearHistoryConfirm =>
      'Are you sure you want to clear all past scan history?';

  @override
  String get historyCleared => 'Scan history cleared successfully';

  @override
  String get devSectionTitle => 'Developer Info';

  @override
  String get email => 'Email';

  @override
  String get website => 'Website';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get copyHash => 'Copy';

  @override
  String get themeDarkSubtitle => 'Background #212327 • Icons/Buttons #232627';

  @override
  String get themeLightSubtitle => 'Background #EFEEF1 • Icons/Buttons #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Match system appearance';
}
