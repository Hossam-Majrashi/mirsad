// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get appName => 'مرصاد';

  @override
  String get appSubtitle => 'د څو انجنو فایل امنیت سکینر';

  @override
  String get studioName => 'جذور سټوډیو';

  @override
  String get appDescription =>
      'مرصاد یو پرمختللی دفاعي امنیتي پلیټ فارم دی چې د مالویر او ګواښونو پیژندلو لپاره په څو موازي امنیتي انجنو کې فایلونه سکین او تحلیلوي.';

  @override
  String get splashGetStarted => 'سکین پیل کړئ';

  @override
  String get btnNext => 'بل';

  @override
  String get btnSkip => 'پریږدئ';

  @override
  String get btnBack => 'شاته';

  @override
  String get btnCancel => 'لغوه کول';

  @override
  String get btnConfirm => 'تایید';

  @override
  String get btnDone => 'بشپړ شو';

  @override
  String get btnSave => 'ساتل';

  @override
  String get btnProceed => 'دوام ورکړئ';

  @override
  String get btnRescan => 'بیا سکین کړئ';

  @override
  String get selectLanguage => 'ژبه وټاکئ';

  @override
  String get searchLanguage => 'ژبه وپلټئ...';

  @override
  String get selectTheme => 'بڼه او رنګ';

  @override
  String get chooseThemeSubtitle => 'د اسانه تجربې لپاره خپل د خوښې بڼه وټاکئ';

  @override
  String get themeDark => 'تیاره حالت';

  @override
  String get themeLight => 'روښانه حالت';

  @override
  String get themeSystem => 'د سیسټم اصلي حالت';

  @override
  String get homeTitle => 'مرصاد';

  @override
  String get newScan => 'نوی سکین';

  @override
  String get settings => 'ترتیبات';

  @override
  String get scanHistory => 'د سکین تاریخچه';

  @override
  String get noScanHistory => 'پخواني سکینونه نشته';

  @override
  String get noScanHistorySubtitle =>
      'د امنیتي انجنو سره د سکین کولو لپاره فایل وټاکئ';

  @override
  String get selectFile => 'فایل وټاکئ';

  @override
  String get dragDropFile => 'فایل دلته راکش کړئ یا یې وټاکئ';

  @override
  String get computingHashes => 'د هشونو محاسبه روانه ده...';

  @override
  String get scanningEngines => 'په امنیتي انجنو کې سکین روان دی...';

  @override
  String get uploadConfirmTitle => 'د فایل پورته کول تایید کړئ';

  @override
  String get uploadConfirmDesc =>
      'د دې فایل هش لپاره پخوانی راپور ونه موندل شو. ایا غواړئ د ژور تحلیل لپاره فایل پورته کړئ؟';

  @override
  String get hashOnlyMode => 'یوازې د هش لټون (سخت پټوالی حالت)';

  @override
  String get fullUploadMode => 'فایل پورته کول او ژور سکین';

  @override
  String get summaryTitle => 'د سکین لنډیز';

  @override
  String get fileName => 'د فایل نوم';

  @override
  String get fileSize => 'د فایل کچه';

  @override
  String get hashSha256 => 'SHA-256 هش';

  @override
  String get hashSha1 => 'SHA-1 هش';

  @override
  String get hashMd5 => 'MD5 هش';

  @override
  String get aggregatedVerdict => 'ټولیزه پریکړه';

  @override
  String flaggedCount(int flagged, int total) {
    return 'له $total چمتو کونکو څخه $flagged دا فایل شکمن په نښه کړ';
  }

  @override
  String get verdictClean => 'پاک';

  @override
  String get verdictSuspicious => 'شکمن';

  @override
  String get verdictMalicious => 'زیان رسونکی';

  @override
  String get verdictUnknown => 'نامعلوم';

  @override
  String get verdictError => 'تېروتنه';

  @override
  String get statusQueued => 'په کتار کې';

  @override
  String get statusScanning => 'سکین روان دی...';

  @override
  String get statusCompleted => 'بشپړ شو';

  @override
  String get statusFailed => 'پاتې راغی';

  @override
  String get viewFullReport => 'بشپړ راپور په براوزر کې وګورئ';

  @override
  String get engineFindings => 'د انجن موندنو تفصیلي راپور';

  @override
  String get engineName => 'انجن';

  @override
  String get engineCategory => 'کټګوري';

  @override
  String get engineResult => 'پایله';

  @override
  String get fileSizeExceeded => 'د فایل کچه له حده زیاته ده';

  @override
  String get shareReport => 'راپور شریک کړئ';

  @override
  String get settingsProviders => 'امنیتي چمتو کونکي';

  @override
  String get settingsPrivacy => 'د پټوالي ترتیبات';

  @override
  String get hashFirstTitle => 'لومړی د هش حالت';

  @override
  String get hashFirstDesc => 'د فایل پورته کولو غوښتنې دمخه هش وپلټئ';

  @override
  String get clearHistory => 'تاریخچه پاکه کړئ';

  @override
  String get clearHistoryConfirm =>
      'ایا تاسو ډاډه یاست چې ټول پخواني سکینونه پاک کړئ؟';

  @override
  String get historyCleared => 'د سکین تاریخچه په بریا سره پاکه شوه';

  @override
  String get devSectionTitle => 'د جوړونکی معلومات';

  @override
  String get email => 'بریښنالیک';

  @override
  String get website => 'ویب پاڼه';

  @override
  String get copiedToClipboard => 'کاپي شو';

  @override
  String get copyHash => 'کاپي';

  @override
  String get themeDarkSubtitle => 'شالید #212327 • بټنې #232627';

  @override
  String get themeLightSubtitle => 'شالید #EFEEF1 • بټنې #FEFEFE';

  @override
  String get themeSystemSubtitle => 'د سیسټم بڼې سره سم';
}
