// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Ko\'p Dvigatelli Fayl Xavfsizligi Skaneri';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad - zararli dasturlar va xavflarni aniqlash uchun fayllarni parallel xavfsizlik dvigatellarida skanerlaydigan ilg\'or platforma.';

  @override
  String get splashGetStarted => 'Skanerlashni Boshlash';

  @override
  String get btnNext => 'Keyingi';

  @override
  String get btnSkip => 'O\'tkazib yuborish';

  @override
  String get btnBack => 'Orqaga';

  @override
  String get btnCancel => 'Bekor qilish';

  @override
  String get btnConfirm => 'Tasdiqlash';

  @override
  String get btnDone => 'Tayyor';

  @override
  String get btnSave => 'Saqlash';

  @override
  String get btnProceed => 'Davom etish';

  @override
  String get btnRescan => 'Qayta Skanerlash';

  @override
  String get selectLanguage => 'Tilni Tanlang';

  @override
  String get searchLanguage => 'Tilni qidirish...';

  @override
  String get selectTheme => 'Mavzu va Ko\'rinish';

  @override
  String get chooseThemeSubtitle =>
      'Qulay foydalanish uchun o\'zingizga yoqqan mavzuni tanlang';

  @override
  String get themeDark => 'Qorong\'i Rejim';

  @override
  String get themeLight => 'Yorug\' Rejim';

  @override
  String get themeSystem => 'Tizim Standarti';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Yangi Skanerlash';

  @override
  String get settings => 'Sozlamalar';

  @override
  String get scanHistory => 'Skanerlash Tarixi';

  @override
  String get noScanHistory => 'Oldingi skanerlashlar yo\'q';

  @override
  String get noScanHistorySubtitle =>
      'Xavfsizlik dvigatellari orqali tekshirish uchun fayl tanlang';

  @override
  String get selectFile => 'Faylni Tanlash';

  @override
  String get dragDropFile =>
      'Faylni bu yerga sudrab tashlang yoki tanlash uchun bosing';

  @override
  String get computingHashes =>
      'Kriptografik xeshlar hisoblanmoqda (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Xavfsizlik dvigatellarida tekshirilmoqda...';

  @override
  String get uploadConfirmTitle => 'Fayl Yuklashni Tasdiqlang';

  @override
  String get uploadConfirmDesc =>
      'Ushbu fayl xeshi uchun oldingi hisobot topilmadi. Chuqur tahlil qilish uchun faylni yuklashni xohlaysizmi?';

  @override
  String get hashOnlyMode => 'Faqat Xesh Qidiruvi (Qat\'iy Maxfiylik)';

  @override
  String get fullUploadMode => 'Faylni Yuklash va Chuqur Skanerlash';

  @override
  String get summaryTitle => 'Skanerlash Xulosasi';

  @override
  String get fileName => 'Fayl Nomi';

  @override
  String get fileSize => 'Fayl Hajmi';

  @override
  String get hashSha256 => 'SHA-256 Xeshi';

  @override
  String get hashSha1 => 'SHA-1 Xeshi';

  @override
  String get hashMd5 => 'MD5 Xeshi';

  @override
  String get aggregatedVerdict => 'Umumiy Xulosa';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total ta ta\'minotchidan $flagged tasi ushbu faylni xavfli deb belgiladi';
  }

  @override
  String get verdictClean => 'Xavfsiz';

  @override
  String get verdictSuspicious => 'Shubhali';

  @override
  String get verdictMalicious => 'Zararli';

  @override
  String get verdictUnknown => 'Noma\'lum';

  @override
  String get verdictError => 'Xato';

  @override
  String get statusQueued => 'Navbatda';

  @override
  String get statusScanning => 'Skanerlanmoqda...';

  @override
  String get statusCompleted => 'Yakunlandi';

  @override
  String get statusFailed => 'Muvaffaqiyatsiz';

  @override
  String get viewFullReport => 'Brauzerda To\'liq Hisobotni Ko\'rish';

  @override
  String get engineFindings => 'Dvigatel Natijalari Tafsilotlari';

  @override
  String get engineName => 'Dvigatel';

  @override
  String get engineCategory => 'Toifa';

  @override
  String get engineResult => 'Natija';

  @override
  String get fileSizeExceeded => 'Fayl hajmi cheklovdan oshib ketdi';

  @override
  String get shareReport => 'Hisobotni Ulashish';

  @override
  String get settingsProviders => 'Xavfsizlik Ta\'minotchilari';

  @override
  String get settingsPrivacy => 'Maxfiylik Sozlamalari';

  @override
  String get hashFirstTitle => 'Avval Xesh Rejimi';

  @override
  String get hashFirstDesc => 'Fayl yuklashdan oldin xeshni tekshiring';

  @override
  String get clearHistory => 'Tarixni Tozalash';

  @override
  String get clearHistoryConfirm =>
      'Barcha skanerlash tarixini tozalashga ishonchingiz komilmi?';

  @override
  String get historyCleared => 'Skanerlash tarixi muvaffaqiyatli tozalandi';

  @override
  String get devSectionTitle => 'Dasturchi Haqida Ma\'lumot';

  @override
  String get email => 'Elektron pochta';

  @override
  String get website => 'Veb-sayt';

  @override
  String get copiedToClipboard => 'Buferga nusxalandi';

  @override
  String get copyHash => 'Nusxa olish';

  @override
  String get themeDarkSubtitle => 'Fon #212327 • Tugmalar #232627';

  @override
  String get themeLightSubtitle => 'Fon #EFEEF1 • Tugmalar #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Tizim ko\'rinishiga moslashtirish';
}
