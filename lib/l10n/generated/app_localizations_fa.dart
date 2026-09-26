// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appName => 'مرصاد';

  @override
  String get appSubtitle => 'اسکنر امنیتی چندموتوره فایل';

  @override
  String get studioName => 'استودیو جذور';

  @override
  String get appDescription =>
      'مرصاد یک پلتفرم امنیتی دفاعی پیشرفته برای اسکن و تحلیل فایل‌ها در چندین موتور امنیتی موازی برای شناسایی بدافزارها و تهدیدات است.';

  @override
  String get splashGetStarted => 'شروع اسکن';

  @override
  String get btnNext => 'بعدی';

  @override
  String get btnSkip => 'رد کردن';

  @override
  String get btnBack => 'بازگشت';

  @override
  String get btnCancel => 'لغو';

  @override
  String get btnConfirm => 'تأیید';

  @override
  String get btnDone => 'انجام شد';

  @override
  String get btnSave => 'ذخیره';

  @override
  String get btnProceed => 'ادامه';

  @override
  String get btnRescan => 'اسکن مجدد';

  @override
  String get selectLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجوی زبان...';

  @override
  String get selectTheme => 'پوسته و ظاهر';

  @override
  String get chooseThemeSubtitle =>
      'پوسته مورد نظر خود را برای تجربه کاربری راحت انتخاب کنید';

  @override
  String get themeDark => 'حالت تاریک';

  @override
  String get themeLight => 'حالت روشن';

  @override
  String get themeSystem => 'پیش‌فرض سیستم';

  @override
  String get homeTitle => 'مرصاد';

  @override
  String get newScan => 'اسکن جدید';

  @override
  String get settings => 'تنظیمات';

  @override
  String get scanHistory => 'تاریخچه اسکن';

  @override
  String get noScanHistory => 'هیچ اسکن قبلی وجود ندارد';

  @override
  String get noScanHistorySubtitle =>
      'یک فایل را برای اسکن در موتورهای امنیتی پیشرفته انتخاب کنید';

  @override
  String get selectFile => 'انتخاب فایل';

  @override
  String get dragDropFile =>
      'فایل را بکشید و اینجا رها کنید، یا برای انتخاب کلیک کنید';

  @override
  String get computingHashes =>
      'محاسبه هشت‌های رمزنگاری (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'در حال اسکن در موتورهای امنیتی...';

  @override
  String get uploadConfirmTitle => 'تأیید بارگذاری فایل';

  @override
  String get uploadConfirmDesc =>
      'هیچ گزارش قبلی برای هش این فایل یافت نشد. آیا مایلید فایل را برای تحلیل دقیق‌تر بارگذاری کنید؟';

  @override
  String get hashOnlyMode => 'بررسی با هش فقط (حالت حریم خصوصی دقیق)';

  @override
  String get fullUploadMode => 'بارگذاری فایل و اسکن عمیق';

  @override
  String get summaryTitle => 'خلاصه اسکن';

  @override
  String get fileName => 'نام فایل';

  @override
  String get fileSize => 'اندازه فایل';

  @override
  String get hashSha256 => 'هش SHA-256';

  @override
  String get hashSha1 => 'هش SHA-1';

  @override
  String get hashMd5 => 'هش MD5';

  @override
  String get aggregatedVerdict => 'نتیجه کلی';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged از $total ارائه‌دهنده این فایل را مشکوک تشخیص دادند';
  }

  @override
  String get verdictClean => 'پاک';

  @override
  String get verdictSuspicious => 'مشکوک';

  @override
  String get verdictMalicious => 'مخرب';

  @override
  String get verdictUnknown => 'نامشخص';

  @override
  String get verdictError => 'خطا';

  @override
  String get statusQueued => 'در صف';

  @override
  String get statusScanning => 'در حال اسکن...';

  @override
  String get statusCompleted => 'تکمیل شد';

  @override
  String get statusFailed => 'ناموفق';

  @override
  String get viewFullReport => 'مشاهده گزارش کامل در مرورگر';

  @override
  String get engineFindings => 'جزئیات یافته‌های موتورها';

  @override
  String get engineName => 'موتور';

  @override
  String get engineCategory => 'دسته‌بندی';

  @override
  String get engineResult => 'نتیجه';

  @override
  String get fileSizeExceeded => 'اندازه فایل از حد مجاز فراتر است';

  @override
  String get shareReport => 'اشتراک‌گذاری گزارش';

  @override
  String get settingsProviders => 'موتورهای امنیتی';

  @override
  String get settingsPrivacy => 'تنظیمات حریم خصوصی';

  @override
  String get hashFirstTitle => 'حالت هش در اولویت';

  @override
  String get hashFirstDesc => 'استعلام با هش قبل از ارسال فایل';

  @override
  String get clearHistory => 'پاکسازی تاریخچه';

  @override
  String get clearHistoryConfirm =>
      'آیا از پاک کردن تمامی تاریخچه اسکن‌ها مطمئن هستید؟';

  @override
  String get historyCleared => 'تاریخچه اسکن با موفقیت پاک شد';

  @override
  String get devSectionTitle => 'اطلاعات توسعه‌دهنده';

  @override
  String get email => 'ایمیل';

  @override
  String get website => 'وب‌سایت';

  @override
  String get copiedToClipboard => 'در کلیپ‌بورد کپی شد';

  @override
  String get copyHash => 'کپی';

  @override
  String get themeDarkSubtitle => 'پس‌زمینه #212327 • دکمه‌ها #232627';

  @override
  String get themeLightSubtitle => 'پس‌زمینه #EFEEF1 • دکمه‌ها #FEFEFE';

  @override
  String get themeSystemSubtitle => 'هماهنگ با ظاهر سیستم';
}
