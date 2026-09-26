// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'مرصاد';

  @override
  String get appSubtitle => 'ملٹی انجن فائل سیکیورٹی سکینر';

  @override
  String get studioName => 'جذور اسٹوڈیو';

  @override
  String get appDescription =>
      'مرصاد ایک جدید دفاعی سیکیورٹی پلیٹ فارم ہے جو وائرس اور خطرات کی نشاندہی کے لیے متوازی انجنوں کے ذریعے فائلوں کی جانچ پڑتال کرتا ہے۔';

  @override
  String get splashGetStarted => 'سکین شروع کریں';

  @override
  String get btnNext => 'اگلا';

  @override
  String get btnSkip => 'چھوڑیں';

  @override
  String get btnBack => 'پیچھے';

  @override
  String get btnCancel => 'منسوخ';

  @override
  String get btnConfirm => 'تصدیق کریں';

  @override
  String get btnDone => 'مکمل';

  @override
  String get btnSave => 'محفوظ کریں';

  @override
  String get btnProceed => 'آگے بڑھیں';

  @override
  String get btnRescan => 'دوبارہ سکین کریں';

  @override
  String get selectLanguage => 'زبان منتخب کریں';

  @override
  String get searchLanguage => 'زبان تلاش کریں...';

  @override
  String get selectTheme => 'تھیم اور ظاہری شکل';

  @override
  String get chooseThemeSubtitle =>
      'آرام دہ تجربے کے لیے اپنی پسندیدہ تھیم منتخب کریں';

  @override
  String get themeDark => 'ڈارک موڈ';

  @override
  String get themeLight => 'لائٹ موڈ';

  @override
  String get themeSystem => 'سسٹم ڈیفالٹ';

  @override
  String get homeTitle => 'مرصاد';

  @override
  String get newScan => 'نیا سکین';

  @override
  String get settings => 'ترتیبات';

  @override
  String get scanHistory => 'سکین ہسٹری';

  @override
  String get noScanHistory => 'کوئی سابقہ سکین نہیں';

  @override
  String get noScanHistorySubtitle =>
      'جدید سیکیورٹی انجنوں سے سکین کرنے کے لیے فائل منتخب کریں';

  @override
  String get selectFile => 'فائل منتخب کریں';

  @override
  String get dragDropFile => 'فائل یہاں ڈریگ اور ڈراپ کریں یا براؤز کریں';

  @override
  String get computingHashes => 'کرپٹوگرافک ہیشز کا حساب لگایا جا رہا ہے...';

  @override
  String get scanningEngines => 'سیکیورٹی انجنوں میں سکیننگ جاری ہے...';

  @override
  String get uploadConfirmTitle => 'فائل اپ لوڈ کی تصدیق کریں';

  @override
  String get uploadConfirmDesc =>
      'اس فائل کے ہیش کے لیے پہلے سے کوئی رپورٹ نہیں ملی۔ کیا آپ گہرے تجزیے کے لیے فائل اپ لوڈ کرنا چاہتے ہیں؟';

  @override
  String get hashOnlyMode => 'صرف ہیش کی جانچ (سخت پرائیویسی موڈ)';

  @override
  String get fullUploadMode => 'فائل اپ لوڈ اور گہرا سکین';

  @override
  String get summaryTitle => 'سکین کا خلاصہ';

  @override
  String get fileName => 'فائل کا نام';

  @override
  String get fileSize => 'فائل کا سائز';

  @override
  String get hashSha256 => 'SHA-256 ہیش';

  @override
  String get hashSha1 => 'SHA-1 ہیش';

  @override
  String get hashMd5 => 'MD5 ہیش';

  @override
  String get aggregatedVerdict => 'مجموعی فیصلہ';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total میں سے $flagged فراہم کنندگان نے اس فائل پر خطرے کا نشان لگایا';
  }

  @override
  String get verdictClean => 'محفوظ';

  @override
  String get verdictSuspicious => 'مشکوک';

  @override
  String get verdictMalicious => 'خطرناک';

  @override
  String get verdictUnknown => 'نامعلوم';

  @override
  String get verdictError => 'خرابی';

  @override
  String get statusQueued => 'قطار میں';

  @override
  String get statusScanning => 'سکیننگ جاری ہے...';

  @override
  String get statusCompleted => 'مکمل ہو گیا';

  @override
  String get statusFailed => 'ناکام ہو گیا';

  @override
  String get viewFullReport => 'براؤزر میں مکمل رپورٹ دیکھیں';

  @override
  String get engineFindings => 'انجن کے نتائج کی تفصیلات';

  @override
  String get engineName => 'انجن';

  @override
  String get engineCategory => 'زمرہ';

  @override
  String get engineResult => 'نتیجہ';

  @override
  String get fileSizeExceeded => 'فائل کا سائز حد سے زیادہ ہے';

  @override
  String get shareReport => 'رپورٹ شیئر کریں';

  @override
  String get settingsProviders => 'سیکیورٹی فراہم کنندگان';

  @override
  String get settingsPrivacy => 'پرائیویسی ترتیبات';

  @override
  String get hashFirstTitle => 'ہیش سب سے پہلے موڈ';

  @override
  String get hashFirstDesc => 'فائل اپ لوڈ سے پہلے ہیش چیک کریں';

  @override
  String get clearHistory => 'ہسٹری صاف کریں';

  @override
  String get clearHistoryConfirm =>
      'کیا آپ واقعی تمام سابقہ سکین ہسٹری صاف کرنا چاہتے ہیں؟';

  @override
  String get historyCleared => 'سکین ہسٹری کامیابی سے صاف ہو گئی';

  @override
  String get devSectionTitle => 'ڈویلپر کی معلومات';

  @override
  String get email => 'ای میل';

  @override
  String get website => 'ویب سائٹ';

  @override
  String get copiedToClipboard => 'کلپ بورڈ پر کاپی ہو گیا';

  @override
  String get copyHash => 'کاپی';

  @override
  String get themeDarkSubtitle => 'پس منظر #212327 • بٹن #232627';

  @override
  String get themeLightSubtitle => 'پس منظر #EFEEF1 • بٹن #FEFEFE';

  @override
  String get themeSystemSubtitle => 'سسٹم کے مطابق';
}
