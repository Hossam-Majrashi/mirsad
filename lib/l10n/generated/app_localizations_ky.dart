// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Көп Кыймылдаткычтуу Файл Коопсуздугу Сканери';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad - коркунучтар менен вирустарды аныктоо үчүн файлдарды катар коопсуздук кыймылдаткычтары аркылуу текшерүүчү заманбап платформа.';

  @override
  String get splashGetStarted => 'Сканерлөөнү Баштоо';

  @override
  String get btnNext => 'Кийинки';

  @override
  String get btnSkip => 'Өткөрүп жиберүү';

  @override
  String get btnBack => 'Артка';

  @override
  String get btnCancel => 'Жокко чыгаруу';

  @override
  String get btnConfirm => 'Ырастоо';

  @override
  String get btnDone => 'Даяр';

  @override
  String get btnSave => 'Сактоо';

  @override
  String get btnProceed => 'Улантуу';

  @override
  String get btnRescan => 'Кайра Сканерлөө';

  @override
  String get selectLanguage => 'Тилди Тандаңыз';

  @override
  String get searchLanguage => 'Тил издөө...';

  @override
  String get selectTheme => 'Тема жана Көрүнүш';

  @override
  String get chooseThemeSubtitle =>
      'Ыңгайлуу иштөө үчүн каалаган темаңызды тандаңыз';

  @override
  String get themeDark => 'Караңгы Режим';

  @override
  String get themeLight => 'Жарык Режим';

  @override
  String get themeSystem => 'Системалык Демейки';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Жаңы Сканерлөө';

  @override
  String get settings => 'Орнотуулар';

  @override
  String get scanHistory => 'Сканерлөө Тарыхы';

  @override
  String get noScanHistory => 'Мурунку сканерлөөлөр жок';

  @override
  String get noScanHistorySubtitle =>
      'Коопсуздук кыймылдаткычтары менен текшерүү үчүн файл тандаңыз';

  @override
  String get selectFile => 'Файл Тандоо';

  @override
  String get dragDropFile =>
      'Файлды бул жерге сүйрөп таштаңыз же тандоо үчүн басыңыз';

  @override
  String get computingHashes =>
      'Криптографиялык хэштер эсептелүүдө (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines =>
      'Коопсуздук кыймылдаткычтарында текшерилүүдө...';

  @override
  String get uploadConfirmTitle => 'Файлды Жүктөөнү Ырастаңыз';

  @override
  String get uploadConfirmDesc =>
      'Бул файл хэши боюнча мурунку отчет табылган жок. Терең талдоо үчүн файлды жүктөөнү каалайсызбы?';

  @override
  String get hashOnlyMode => 'Хэш Аркылуу Гана Издөө (Катуу Купуялуулук)';

  @override
  String get fullUploadMode => 'Файлды Жүктөө жана Терең Сканерлөө';

  @override
  String get summaryTitle => 'Сканерлөө Жыйынтыгы';

  @override
  String get fileName => 'Файлдын Аты';

  @override
  String get fileSize => 'Файлдын Көлөмү';

  @override
  String get hashSha256 => 'SHA-256 Хэши';

  @override
  String get hashSha1 => 'SHA-1 Хэши';

  @override
  String get hashMd5 => 'MD5 Хэши';

  @override
  String get aggregatedVerdict => 'Жалпы Жыйынтык';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total провайдердин $flagged-и бул файлды кооптуу деп тапты';
  }

  @override
  String get verdictClean => 'Таза';

  @override
  String get verdictSuspicious => 'Шектүү';

  @override
  String get verdictMalicious => 'Зыяндуу';

  @override
  String get verdictUnknown => 'Белгисиз';

  @override
  String get verdictError => 'Ката';

  @override
  String get statusQueued => 'Кезекте';

  @override
  String get statusScanning => 'Текшерилүүдө...';

  @override
  String get statusCompleted => 'Аяктады';

  @override
  String get statusFailed => 'Оңунан чыккан жок';

  @override
  String get viewFullReport => 'Браузерден Толук Отчетту Көрүү';

  @override
  String get engineFindings => 'Кыймылдаткыч Жыйынтыктарынын Чоо-жайы';

  @override
  String get engineName => 'Кыймылдаткыч';

  @override
  String get engineCategory => 'Категория';

  @override
  String get engineResult => 'Жыйынтык';

  @override
  String get fileSizeExceeded => 'Файлдын көлөмү чектен ашып кетти';

  @override
  String get shareReport => 'Отчетту Бөлүшүү';

  @override
  String get settingsProviders => 'Коопсуздук Провайдерлери';

  @override
  String get settingsPrivacy => 'Купуялык Орнотуулары';

  @override
  String get hashFirstTitle => 'Адегенде Хэш Режими';

  @override
  String get hashFirstDesc => 'Файлды жүктөөнүн алдында хэшти текшериңиз';

  @override
  String get clearHistory => 'Тарыхты Тазалоо';

  @override
  String get clearHistoryConfirm =>
      'Бардык сканерлөө тарыхын тазалоону каалайсызбы?';

  @override
  String get historyCleared => 'Сканерлөө тарыхы ийгиликтүү тазаланды';

  @override
  String get devSectionTitle => 'Иштеп Чыгуучу Жөнүндө Маалымат';

  @override
  String get email => 'Электрондук почта';

  @override
  String get website => 'Веб-сайт';

  @override
  String get copiedToClipboard => 'Буферге көчүрүлдү';

  @override
  String get copyHash => 'Көчүрүү';

  @override
  String get themeDarkSubtitle => 'Фон #212327 • Баскычтар #232627';

  @override
  String get themeLightSubtitle => 'Фон #EFEEF1 • Баскычтар #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Системанын көрүнүшүнө ылайыкташтыруу';
}
