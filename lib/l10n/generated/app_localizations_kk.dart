// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Көп Қозғалтқышты Файл Қауіпсіздігі Сканері';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad - вирустар мен қауіптерді анықтау үшін файлдарды қатарлас қауіпсіздік қозғалтқыштары арқылы сканерлейтін және талдайтын озық қорғаныс платформасы.';

  @override
  String get splashGetStarted => 'Сканерлеуді Бастау';

  @override
  String get btnNext => 'Келесі';

  @override
  String get btnSkip => 'Өткізіп жіберу';

  @override
  String get btnBack => 'Артқа';

  @override
  String get btnCancel => 'Бас тарту';

  @override
  String get btnConfirm => 'Растау';

  @override
  String get btnDone => 'Дайын';

  @override
  String get btnSave => 'Сақтау';

  @override
  String get btnProceed => 'Жалғастыру';

  @override
  String get btnRescan => 'Қайта Сканерлеу';

  @override
  String get selectLanguage => 'Тілді Таңдаңыз';

  @override
  String get searchLanguage => 'Тілді іздеу...';

  @override
  String get selectTheme => 'Тақырып пен Сыртқы Көрініс';

  @override
  String get chooseThemeSubtitle =>
      'Ыңғайлы жұмыс үшін қалаған тақырыбыңызды таңдаңыз';

  @override
  String get themeDark => 'Күңгірт Режим';

  @override
  String get themeLight => 'Ашық Режим';

  @override
  String get themeSystem => 'Жүйелік Әдепкі';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Жаңа Сканерлеу';

  @override
  String get settings => 'Баптаулар';

  @override
  String get scanHistory => 'Сканерлеу Тарихы';

  @override
  String get noScanHistory => 'Алдыңғы сканерлеулер жоқ';

  @override
  String get noScanHistorySubtitle =>
      'Қауіпсіздік қозғалтқыштарымен тексеру үшін файлды таңдаңыз';

  @override
  String get selectFile => 'Файлды Таңдау';

  @override
  String get dragDropFile =>
      'Файлды осында сүйреп тастаңыз немесе таңдау үшін басыңыз';

  @override
  String get computingHashes =>
      'Криптографиялық хэштер есептелуде (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Қауіпсіздік қозғалтқыштарында тексерілуде...';

  @override
  String get uploadConfirmTitle => 'Файлды Жүктеуді Растаңыз';

  @override
  String get uploadConfirmDesc =>
      'Бұл файл хэші бойынша алдыңғы есеп табылмады. Терең талдау үшін файлды жүктегіңіз келе ме?';

  @override
  String get hashOnlyMode => 'Тек Хэш Іздеу (Қатаң Құпиялылық Режимі)';

  @override
  String get fullUploadMode => 'Файлды Жүктеу және Терең Сканерлеу';

  @override
  String get summaryTitle => 'Сканерлеу Қорытындысы';

  @override
  String get fileName => 'Файл Атауы';

  @override
  String get fileSize => 'Файл Көлемі';

  @override
  String get hashSha256 => 'SHA-256 Хэші';

  @override
  String get hashSha1 => 'SHA-1 Хэші';

  @override
  String get hashMd5 => 'MD5 Хэші';

  @override
  String get aggregatedVerdict => 'Жалпы Қорытынды';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total провайдердің $flagged-і бұл файлды қауіпті деп тапты';
  }

  @override
  String get verdictClean => 'Қауіпсіз';

  @override
  String get verdictSuspicious => 'Күдікті';

  @override
  String get verdictMalicious => 'Зиянды';

  @override
  String get verdictUnknown => 'Белгісіз';

  @override
  String get verdictError => 'Қате';

  @override
  String get statusQueued => 'Кезекте';

  @override
  String get statusScanning => 'Сканерленуде...';

  @override
  String get statusCompleted => 'Аяқталды';

  @override
  String get statusFailed => 'Сәтсіз аяқталды';

  @override
  String get viewFullReport => 'Толық Есепті Браузерден Көру';

  @override
  String get engineFindings => 'Қозғалтқыш Нәтижелерінің Толық Мәліметтері';

  @override
  String get engineName => 'Қозғалтқыш';

  @override
  String get engineCategory => 'Санат';

  @override
  String get engineResult => 'Нәтиже';

  @override
  String get fileSizeExceeded => 'Файл өлшемі шектен асып кетті';

  @override
  String get shareReport => 'Есеппен Бөлісу';

  @override
  String get settingsProviders => 'Қауіпсіздік Провайдерлері';

  @override
  String get settingsPrivacy => 'Құпиялылық Баптаулары';

  @override
  String get hashFirstTitle => 'Алдымен Хэш Режимі';

  @override
  String get hashFirstDesc => 'Файлды жүктемес бұрын хэшті тексеріңіз';

  @override
  String get clearHistory => 'Тарихты Тазалау';

  @override
  String get clearHistoryConfirm =>
      'Барлық сканерлеу тарихын тазалағыңыз келетініне сенімдісіз бе?';

  @override
  String get historyCleared => 'Сканерлеу тарихы сәтті тазаланды';

  @override
  String get devSectionTitle => 'Әзірлеуші Туралы Ақпарат';

  @override
  String get email => 'Электрондық пошта';

  @override
  String get website => 'Веб-сайт';

  @override
  String get copiedToClipboard => 'Алмасу буферіне көшірілді';

  @override
  String get copyHash => 'Көшіру';

  @override
  String get themeDarkSubtitle => 'Фон #212327 • Батырмалар #232627';

  @override
  String get themeLightSubtitle => 'Фон #EFEEF1 • Батырмалар #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Жүйелік көрініске бейімделу';
}
