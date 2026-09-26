// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'مرصاد';

  @override
  String get appSubtitle => 'فاحص أمان الملفات متعدد المحركات';

  @override
  String get studioName => 'جذور استوديو';

  @override
  String get appDescription =>
      'مرصاد هو تطبيق دفاعي متقدم لفحص وتحليل الملفات عبر محركات أمنية متعددة وموازية للكشف عن التهديدات والبرمجيات الخبيثة.';

  @override
  String get splashGetStarted => 'ابدأ الفحص';

  @override
  String get btnNext => 'التالي';

  @override
  String get btnSkip => 'تخطي';

  @override
  String get btnBack => 'رجوع';

  @override
  String get btnCancel => 'إلغاء';

  @override
  String get btnConfirm => 'تأكيد';

  @override
  String get btnDone => 'تم';

  @override
  String get btnSave => 'حفظ';

  @override
  String get btnProceed => 'متابعة';

  @override
  String get btnRescan => 'إعادة الفحص';

  @override
  String get selectLanguage => 'اختر لغة التطبيق';

  @override
  String get searchLanguage => 'بحث عن لغة...';

  @override
  String get selectTheme => 'المظهر والسمة';

  @override
  String get chooseThemeSubtitle => 'اختر السمة المفضلة لتجربة استخدام مريحة';

  @override
  String get themeDark => 'الوضع الداكن';

  @override
  String get themeLight => 'الوضع الفاتح';

  @override
  String get themeSystem => 'حسب النظام';

  @override
  String get homeTitle => 'مرصاد';

  @override
  String get newScan => 'فحص جديد';

  @override
  String get settings => 'الإعدادات';

  @override
  String get scanHistory => 'سجل الفحوصات';

  @override
  String get noScanHistory => 'لا توجد فحوصات سابقة';

  @override
  String get noScanHistorySubtitle =>
      'اختر ملفاً لبدء الفحص عبر المحركات الأمنية المتقدمة';

  @override
  String get selectFile => 'اختيار ملف';

  @override
  String get dragDropFile => 'اسحب الملف وأفلته هنا، أو انقر للاختيار';

  @override
  String get computingHashes =>
      'جاري حساب البصمات الرقمية (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'جاري الفحص عبر المحركات الأمنية...';

  @override
  String get uploadConfirmTitle => 'تأكيد رفع محتوى الملف';

  @override
  String get uploadConfirmDesc =>
      'لم يتم العثور على تقرير سابق لبصمة هذا الملف. هل ترغب في رفع محتوى الملف إلى المحركات الخارجية لإجراء تحليل كامل؟\n\nتنويه: عند الرفع سيصبح محتوى الملف مرئياً لمزودي الخدمة الخارجيين المحددين.';

  @override
  String get hashOnlyMode => 'فحص بالبصمة فقط (وضع الخصوصية المشدد)';

  @override
  String get fullUploadMode => 'رفع الملف والفحص العميق';

  @override
  String get summaryTitle => 'ملخص الفحص';

  @override
  String get fileName => 'اسم الملف';

  @override
  String get fileSize => 'حجم الملف';

  @override
  String get hashSha256 => 'بصمة SHA-256';

  @override
  String get hashSha1 => 'بصمة SHA-1';

  @override
  String get hashMd5 => 'بصمة MD5';

  @override
  String get aggregatedVerdict => 'النتيجة العامة';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged من أصل $total محركات رصدت تهديداً في هذا الملف';
  }

  @override
  String get verdictClean => 'سليم';

  @override
  String get verdictSuspicious => 'مشبوه';

  @override
  String get verdictMalicious => 'خبيث';

  @override
  String get verdictUnknown => 'غير معروف';

  @override
  String get verdictError => 'خطأ';

  @override
  String get statusQueued => 'قيد الانتظار';

  @override
  String get statusScanning => 'جاري الفحص...';

  @override
  String get statusCompleted => 'مكتمل';

  @override
  String get statusFailed => 'تعذر الفحص';

  @override
  String get viewFullReport => 'عرض التقرير الكامل في المتصفح';

  @override
  String get engineFindings => 'تفاصيل نتائج المحركات';

  @override
  String get engineName => 'المحرك';

  @override
  String get engineCategory => 'التصنيف';

  @override
  String get engineResult => 'النتيجة';

  @override
  String get fileSizeExceeded => 'حجم الملف يتجاوز الحد المسموح به لهذا المزود';

  @override
  String get shareReport => 'مشاركة التقرير';

  @override
  String get settingsProviders => 'المحركات الأمنية';

  @override
  String get settingsPrivacy => 'إعدادات الخصوصية';

  @override
  String get hashFirstTitle => 'البصمة أولاً (Hash-First)';

  @override
  String get hashFirstDesc =>
      'الاستعلام بالبصمة الرقمية أولاً وعدم رفع الملف إلا بعد التأكيد';

  @override
  String get clearHistory => 'مسح سجل الفحوصات';

  @override
  String get clearHistoryConfirm =>
      'هل أنت متأكد من مسح جميع سجلات الفحوصات السابقة؟';

  @override
  String get historyCleared => 'تم مسح سجل الفحوصات بنجاح';

  @override
  String get devSectionTitle => 'معلومات المطور';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get website => 'الموقع الإلكتروني';

  @override
  String get copiedToClipboard => 'تم النسخ إلى الحافظة';

  @override
  String get copyHash => 'نسخ';

  @override
  String get themeDarkSubtitle => 'الخلفية #212327 • الأيقونات/الأزرار #232627';

  @override
  String get themeLightSubtitle =>
      'الخلفية #EFEEF1 • الأيقونات/الأزرار #FEFEFE';

  @override
  String get themeSystemSubtitle => 'مطابقة مظهر النظام';
}
