// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sindhi (`sd`).
class AppLocalizationsSd extends AppLocalizations {
  AppLocalizationsSd([String locale = 'sd']) : super(locale);

  @override
  String get appName => 'مرصاد';

  @override
  String get appSubtitle => 'ملٽي انجڻ فائيل سيڪيورٽي اسڪينر';

  @override
  String get studioName => 'جذور اسٽوڊيو';

  @override
  String get appDescription =>
      'مرصاد هڪ جديد حفاظتي پليٽ فارم آهي جيڪو وائرس ۽ خطرن کي ڳولڻ لاءِ متوازي سيڪيورٽي انجڻين ذريعي فائيلن جي چڪاس ڪري ٿو.';

  @override
  String get splashGetStarted => 'اسڪين شروع ڪريو';

  @override
  String get btnNext => 'اڳيون';

  @override
  String get btnSkip => 'ڇڏي ڏيو';

  @override
  String get btnBack => 'پوئتي';

  @override
  String get btnCancel => 'رد ڪريو';

  @override
  String get btnConfirm => 'تصديق ڪريو';

  @override
  String get btnDone => 'مڪمل';

  @override
  String get btnSave => 'محفوظ ڪريو';

  @override
  String get btnProceed => 'اڳتي وڌو';

  @override
  String get btnRescan => 'ٻيهر اسڪين ڪريو';

  @override
  String get selectLanguage => 'ٻولي چونڊيو';

  @override
  String get searchLanguage => 'ٻولي ڳوليو...';

  @override
  String get selectTheme => 'ٿيم ۽ ڏيک';

  @override
  String get chooseThemeSubtitle =>
      'آرامده تجربي لاءِ پنهنجي پسند جي ٿيم چونڊيو';

  @override
  String get themeDark => 'اونداهو موڊ';

  @override
  String get themeLight => 'روشن موڊ';

  @override
  String get themeSystem => 'سسٽم ڊيفالٽ';

  @override
  String get homeTitle => 'مرصاد';

  @override
  String get newScan => 'نئون اسڪين';

  @override
  String get settings => 'سيٽنگون';

  @override
  String get scanHistory => 'اسڪين تاريخ';

  @override
  String get noScanHistory => 'ڪو اڳوڻو اسڪين ناهي';

  @override
  String get noScanHistorySubtitle =>
      'سيڪيورٽي انجڻين سان اسڪين ڪرڻ لاءِ فائيل چونڊيو';

  @override
  String get selectFile => 'فائيل چونڊيو';

  @override
  String get dragDropFile => 'فائيل هتي ڇڪي رکو يا برائوز ڪريو';

  @override
  String get computingHashes => 'ڪرپٽوگرافڪ هيش ڳڻيا پيا وڃن...';

  @override
  String get scanningEngines => 'سيڪيورٽي انجڻين ۾ اسڪيننگ جاري آهي...';

  @override
  String get uploadConfirmTitle => 'فائيل اپلوڊ جي تصديق';

  @override
  String get uploadConfirmDesc =>
      'هن فائيل هيش لاءِ ڪا اڳوڻي رپورٽ نه ملي. ڇا توهان تجزئي لاءِ فائيل اپلوڊ ڪرڻ چاهيو ٿا؟';

  @override
  String get hashOnlyMode => 'صرف هيش چڪاس (سخت پرائيويسي موڊ)';

  @override
  String get fullUploadMode => 'فائيل اپلوڊ ۽ گهرو اسڪين';

  @override
  String get summaryTitle => 'اسڪين جو خلاصو';

  @override
  String get fileName => 'فائيل جو نالو';

  @override
  String get fileSize => 'فائيل جي سائيز';

  @override
  String get hashSha256 => 'SHA-256 هيش';

  @override
  String get hashSha1 => 'SHA-1 هيش';

  @override
  String get hashMd5 => 'MD5 هيش';

  @override
  String get aggregatedVerdict => 'مجموعي فيصلو';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total مان $flagged مهيا ڪندڙن هن فائيل کي شڪي قرار ڏنو';
  }

  @override
  String get verdictClean => 'صاف';

  @override
  String get verdictSuspicious => 'شڪي';

  @override
  String get verdictMalicious => 'نقصانڪار';

  @override
  String get verdictUnknown => 'نامعلوم';

  @override
  String get verdictError => 'غلطي';

  @override
  String get statusQueued => 'قطار ۾';

  @override
  String get statusScanning => 'اسڪيننگ جاري آهي...';

  @override
  String get statusCompleted => 'مڪمل ٿيو';

  @override
  String get statusFailed => 'ناڪام ٿيو';

  @override
  String get viewFullReport => 'برائوزر ۾ پوري رپورٽ ڏسو';

  @override
  String get engineFindings => 'انجڻ نتيجن جا تفصيل';

  @override
  String get engineName => 'انجڻ';

  @override
  String get engineCategory => 'درجو';

  @override
  String get engineResult => 'نتيجو';

  @override
  String get fileSizeExceeded => 'فائيل جي سائيز حد کان وڌيڪ آهي';

  @override
  String get shareReport => 'رپورٽ شيئر ڪريو';

  @override
  String get settingsProviders => 'سيڪيورٽي مهيا ڪندڙ';

  @override
  String get settingsPrivacy => 'پرائيويسي سيٽنگون';

  @override
  String get hashFirstTitle => 'پهرين هيش موڊ';

  @override
  String get hashFirstDesc => 'اپلوڊ ڪرڻ کان اڳ هيش جي چڪاس ڪريو';

  @override
  String get clearHistory => 'تاريخ صاف ڪريو';

  @override
  String get clearHistoryConfirm =>
      'ڇا توهان سڀ اڳوڻي اسڪين تاريخ صاف ڪرڻ چاهيو ٿا؟';

  @override
  String get historyCleared => 'تاريخ ڪاميابي سان صاف ٿي وئي';

  @override
  String get devSectionTitle => 'ڊولپر جي معلومات';

  @override
  String get email => 'اي ميل';

  @override
  String get website => 'ويب سائيٽ';

  @override
  String get copiedToClipboard => 'ڪلپ بورڊ تي ڪاپي ٿي ويو';

  @override
  String get copyHash => 'ڪاپي';

  @override
  String get themeDarkSubtitle => 'پس منظر #212327 • بٽڻ #232627';

  @override
  String get themeLightSubtitle => 'پس منظر #EFEEF1 • بٽڻ #FEFEFE';

  @override
  String get themeSystemSubtitle => 'سسٽم ڏيک مطابق';
}
