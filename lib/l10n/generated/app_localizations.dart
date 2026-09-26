import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_my.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pcm.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sd.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_yo.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('am'),
    Locale('ar'),
    Locale('az'),
    Locale('bn'),
    Locale('bs'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fil'),
    Locale('fr'),
    Locale('gu'),
    Locale('ha'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('kk'),
    Locale('ko'),
    Locale('ku'),
    Locale('ky'),
    Locale('ml'),
    Locale('mr'),
    Locale('ms'),
    Locale('my'),
    Locale('ne'),
    Locale('nl'),
    Locale('pa'),
    Locale('pcm'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sd'),
    Locale('so'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('yo'),
    Locale('zh'),
    Locale('zh', 'TW'),
  ];

  /// No description provided for @appName.
  ///
  /// In ar, this message translates to:
  /// **'مرصاد'**
  String get appName;

  /// No description provided for @appSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'فاحص أمان الملفات متعدد المحركات'**
  String get appSubtitle;

  /// No description provided for @studioName.
  ///
  /// In ar, this message translates to:
  /// **'جذور استوديو'**
  String get studioName;

  /// No description provided for @appDescription.
  ///
  /// In ar, this message translates to:
  /// **'مرصاد هو تطبيق دفاعي متقدم لفحص وتحليل الملفات عبر محركات أمنية متعددة وموازية للكشف عن التهديدات والبرمجيات الخبيثة.'**
  String get appDescription;

  /// No description provided for @splashGetStarted.
  ///
  /// In ar, this message translates to:
  /// **'ابدأ الفحص'**
  String get splashGetStarted;

  /// No description provided for @btnNext.
  ///
  /// In ar, this message translates to:
  /// **'التالي'**
  String get btnNext;

  /// No description provided for @btnSkip.
  ///
  /// In ar, this message translates to:
  /// **'تخطي'**
  String get btnSkip;

  /// No description provided for @btnBack.
  ///
  /// In ar, this message translates to:
  /// **'رجوع'**
  String get btnBack;

  /// No description provided for @btnCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get btnCancel;

  /// No description provided for @btnConfirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get btnConfirm;

  /// No description provided for @btnDone.
  ///
  /// In ar, this message translates to:
  /// **'تم'**
  String get btnDone;

  /// No description provided for @btnSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get btnSave;

  /// No description provided for @btnProceed.
  ///
  /// In ar, this message translates to:
  /// **'متابعة'**
  String get btnProceed;

  /// No description provided for @btnRescan.
  ///
  /// In ar, this message translates to:
  /// **'إعادة الفحص'**
  String get btnRescan;

  /// No description provided for @selectLanguage.
  ///
  /// In ar, this message translates to:
  /// **'اختر لغة التطبيق'**
  String get selectLanguage;

  /// No description provided for @searchLanguage.
  ///
  /// In ar, this message translates to:
  /// **'بحث عن لغة...'**
  String get searchLanguage;

  /// No description provided for @selectTheme.
  ///
  /// In ar, this message translates to:
  /// **'المظهر والسمة'**
  String get selectTheme;

  /// No description provided for @chooseThemeSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'اختر السمة المفضلة لتجربة استخدام مريحة'**
  String get chooseThemeSubtitle;

  /// No description provided for @themeDark.
  ///
  /// In ar, this message translates to:
  /// **'الوضع الداكن'**
  String get themeDark;

  /// No description provided for @themeLight.
  ///
  /// In ar, this message translates to:
  /// **'الوضع الفاتح'**
  String get themeLight;

  /// No description provided for @themeSystem.
  ///
  /// In ar, this message translates to:
  /// **'حسب النظام'**
  String get themeSystem;

  /// No description provided for @homeTitle.
  ///
  /// In ar, this message translates to:
  /// **'مرصاد'**
  String get homeTitle;

  /// No description provided for @newScan.
  ///
  /// In ar, this message translates to:
  /// **'فحص جديد'**
  String get newScan;

  /// No description provided for @settings.
  ///
  /// In ar, this message translates to:
  /// **'الإعدادات'**
  String get settings;

  /// No description provided for @scanHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل الفحوصات'**
  String get scanHistory;

  /// No description provided for @noScanHistory.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فحوصات سابقة'**
  String get noScanHistory;

  /// No description provided for @noScanHistorySubtitle.
  ///
  /// In ar, this message translates to:
  /// **'اختر ملفاً لبدء الفحص عبر المحركات الأمنية المتقدمة'**
  String get noScanHistorySubtitle;

  /// No description provided for @selectFile.
  ///
  /// In ar, this message translates to:
  /// **'اختيار ملف'**
  String get selectFile;

  /// No description provided for @dragDropFile.
  ///
  /// In ar, this message translates to:
  /// **'اسحب الملف وأفلته هنا، أو انقر للاختيار'**
  String get dragDropFile;

  /// No description provided for @computingHashes.
  ///
  /// In ar, this message translates to:
  /// **'جاري حساب البصمات الرقمية (SHA-256 / SHA-1 / MD5)...'**
  String get computingHashes;

  /// No description provided for @scanningEngines.
  ///
  /// In ar, this message translates to:
  /// **'جاري الفحص عبر المحركات الأمنية...'**
  String get scanningEngines;

  /// No description provided for @uploadConfirmTitle.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد رفع محتوى الملف'**
  String get uploadConfirmTitle;

  /// No description provided for @uploadConfirmDesc.
  ///
  /// In ar, this message translates to:
  /// **'لم يتم العثور على تقرير سابق لبصمة هذا الملف. هل ترغب في رفع محتوى الملف إلى المحركات الخارجية لإجراء تحليل كامل؟\n\nتنويه: عند الرفع سيصبح محتوى الملف مرئياً لمزودي الخدمة الخارجيين المحددين.'**
  String get uploadConfirmDesc;

  /// No description provided for @hashOnlyMode.
  ///
  /// In ar, this message translates to:
  /// **'فحص بالبصمة فقط (وضع الخصوصية المشدد)'**
  String get hashOnlyMode;

  /// No description provided for @fullUploadMode.
  ///
  /// In ar, this message translates to:
  /// **'رفع الملف والفحص العميق'**
  String get fullUploadMode;

  /// No description provided for @summaryTitle.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الفحص'**
  String get summaryTitle;

  /// No description provided for @fileName.
  ///
  /// In ar, this message translates to:
  /// **'اسم الملف'**
  String get fileName;

  /// No description provided for @fileSize.
  ///
  /// In ar, this message translates to:
  /// **'حجم الملف'**
  String get fileSize;

  /// No description provided for @hashSha256.
  ///
  /// In ar, this message translates to:
  /// **'بصمة SHA-256'**
  String get hashSha256;

  /// No description provided for @hashSha1.
  ///
  /// In ar, this message translates to:
  /// **'بصمة SHA-1'**
  String get hashSha1;

  /// No description provided for @hashMd5.
  ///
  /// In ar, this message translates to:
  /// **'بصمة MD5'**
  String get hashMd5;

  /// No description provided for @aggregatedVerdict.
  ///
  /// In ar, this message translates to:
  /// **'النتيجة العامة'**
  String get aggregatedVerdict;

  /// No description provided for @flaggedCount.
  ///
  /// In ar, this message translates to:
  /// **'{flagged} من أصل {total} محركات رصدت تهديداً في هذا الملف'**
  String flaggedCount(int flagged, int total);

  /// No description provided for @verdictClean.
  ///
  /// In ar, this message translates to:
  /// **'سليم'**
  String get verdictClean;

  /// No description provided for @verdictSuspicious.
  ///
  /// In ar, this message translates to:
  /// **'مشبوه'**
  String get verdictSuspicious;

  /// No description provided for @verdictMalicious.
  ///
  /// In ar, this message translates to:
  /// **'خبيث'**
  String get verdictMalicious;

  /// No description provided for @verdictUnknown.
  ///
  /// In ar, this message translates to:
  /// **'غير معروف'**
  String get verdictUnknown;

  /// No description provided for @verdictError.
  ///
  /// In ar, this message translates to:
  /// **'خطأ'**
  String get verdictError;

  /// No description provided for @statusQueued.
  ///
  /// In ar, this message translates to:
  /// **'قيد الانتظار'**
  String get statusQueued;

  /// No description provided for @statusScanning.
  ///
  /// In ar, this message translates to:
  /// **'جاري الفحص...'**
  String get statusScanning;

  /// No description provided for @statusCompleted.
  ///
  /// In ar, this message translates to:
  /// **'مكتمل'**
  String get statusCompleted;

  /// No description provided for @statusFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الفحص'**
  String get statusFailed;

  /// No description provided for @viewFullReport.
  ///
  /// In ar, this message translates to:
  /// **'عرض التقرير الكامل في المتصفح'**
  String get viewFullReport;

  /// No description provided for @engineFindings.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل نتائج المحركات'**
  String get engineFindings;

  /// No description provided for @engineName.
  ///
  /// In ar, this message translates to:
  /// **'المحرك'**
  String get engineName;

  /// No description provided for @engineCategory.
  ///
  /// In ar, this message translates to:
  /// **'التصنيف'**
  String get engineCategory;

  /// No description provided for @engineResult.
  ///
  /// In ar, this message translates to:
  /// **'النتيجة'**
  String get engineResult;

  /// No description provided for @fileSizeExceeded.
  ///
  /// In ar, this message translates to:
  /// **'حجم الملف يتجاوز الحد المسموح به لهذا المزود'**
  String get fileSizeExceeded;

  /// No description provided for @shareReport.
  ///
  /// In ar, this message translates to:
  /// **'مشاركة التقرير'**
  String get shareReport;

  /// No description provided for @settingsProviders.
  ///
  /// In ar, this message translates to:
  /// **'المحركات الأمنية'**
  String get settingsProviders;

  /// No description provided for @settingsPrivacy.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الخصوصية'**
  String get settingsPrivacy;

  /// No description provided for @hashFirstTitle.
  ///
  /// In ar, this message translates to:
  /// **'البصمة أولاً (Hash-First)'**
  String get hashFirstTitle;

  /// No description provided for @hashFirstDesc.
  ///
  /// In ar, this message translates to:
  /// **'الاستعلام بالبصمة الرقمية أولاً وعدم رفع الملف إلا بعد التأكيد'**
  String get hashFirstDesc;

  /// No description provided for @clearHistory.
  ///
  /// In ar, this message translates to:
  /// **'مسح سجل الفحوصات'**
  String get clearHistory;

  /// No description provided for @clearHistoryConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل أنت متأكد من مسح جميع سجلات الفحوصات السابقة؟'**
  String get clearHistoryConfirm;

  /// No description provided for @historyCleared.
  ///
  /// In ar, this message translates to:
  /// **'تم مسح سجل الفحوصات بنجاح'**
  String get historyCleared;

  /// No description provided for @devSectionTitle.
  ///
  /// In ar, this message translates to:
  /// **'معلومات المطور'**
  String get devSectionTitle;

  /// No description provided for @email.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get email;

  /// No description provided for @website.
  ///
  /// In ar, this message translates to:
  /// **'الموقع الإلكتروني'**
  String get website;

  /// No description provided for @copiedToClipboard.
  ///
  /// In ar, this message translates to:
  /// **'تم النسخ إلى الحافظة'**
  String get copiedToClipboard;

  /// No description provided for @copyHash.
  ///
  /// In ar, this message translates to:
  /// **'نسخ'**
  String get copyHash;

  /// No description provided for @themeDarkSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'الخلفية #212327 • الأيقونات/الأزرار #232627'**
  String get themeDarkSubtitle;

  /// No description provided for @themeLightSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'الخلفية #EFEEF1 • الأيقونات/الأزرار #FEFEFE'**
  String get themeLightSubtitle;

  /// No description provided for @themeSystemSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'مطابقة مظهر النظام'**
  String get themeSystemSubtitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'am',
    'ar',
    'az',
    'bn',
    'bs',
    'de',
    'el',
    'en',
    'es',
    'fa',
    'fil',
    'fr',
    'gu',
    'ha',
    'hi',
    'id',
    'it',
    'ja',
    'kk',
    'ko',
    'ku',
    'ky',
    'ml',
    'mr',
    'ms',
    'my',
    'ne',
    'nl',
    'pa',
    'pcm',
    'pl',
    'ps',
    'pt',
    'ro',
    'ru',
    'sd',
    'so',
    'sw',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'ur',
    'uz',
    'vi',
    'yo',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'bn':
      return AppLocalizationsBn();
    case 'bs':
      return AppLocalizationsBs();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'ha':
      return AppLocalizationsHa();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'kk':
      return AppLocalizationsKk();
    case 'ko':
      return AppLocalizationsKo();
    case 'ku':
      return AppLocalizationsKu();
    case 'ky':
      return AppLocalizationsKy();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'my':
      return AppLocalizationsMy();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'pa':
      return AppLocalizationsPa();
    case 'pcm':
      return AppLocalizationsPcm();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sd':
      return AppLocalizationsSd();
    case 'so':
      return AppLocalizationsSo();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 'vi':
      return AppLocalizationsVi();
    case 'yo':
      return AppLocalizationsYo();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
