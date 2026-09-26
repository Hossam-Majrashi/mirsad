// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'মাল্টি-ইঞ্জিন ফাইল সিকিউরিটি স্ক্যানার';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad হলো একটি উন্নত প্রতিরক্ষামূলক নিরাপত্তা প্ল্যাটফর্ম যা ম্যালওয়্যার ও হুমকি শনাক্ত করতে সমান্তরাল একাধিক সিকিউরিটি ইঞ্জিনের মাধ্যমে ফাইল স্ক্যান ও বিশ্লেষণ করে।';

  @override
  String get splashGetStarted => 'স্ক্যান শুরু করুন';

  @override
  String get btnNext => 'পরবর্তী';

  @override
  String get btnSkip => 'এড়িয়ে যান';

  @override
  String get btnBack => 'পেছনে';

  @override
  String get btnCancel => 'বাতিল';

  @override
  String get btnConfirm => 'নিশ্চিত করুন';

  @override
  String get btnDone => 'সম্পন্ন';

  @override
  String get btnSave => 'সংরক্ষণ';

  @override
  String get btnProceed => 'এগিয়ে যান';

  @override
  String get btnRescan => 'পুনরায় স্ক্যান করুন';

  @override
  String get selectLanguage => 'ভাষা নির্বাচন করুন';

  @override
  String get searchLanguage => 'ভাষা খুঁজুন...';

  @override
  String get selectTheme => 'থিম ও রূপরেখা';

  @override
  String get chooseThemeSubtitle =>
      'আরামদায়ক অভিজ্ঞতার জন্য আপনার পছন্দের থিম নির্বাচন করুন';

  @override
  String get themeDark => 'ডার্ক মোড';

  @override
  String get themeLight => 'লাইট মোড';

  @override
  String get themeSystem => 'সিস্টেম ডিফল্ট';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'নতুন স্ক্যান';

  @override
  String get settings => 'সেটিংস';

  @override
  String get scanHistory => 'স্ক্যানের ইতিহাস';

  @override
  String get noScanHistory => 'কোনো পূর্ববর্তী স্ক্যান নেই';

  @override
  String get noScanHistorySubtitle =>
      'উন্নত নিরাপত্তা ইঞ্জিনের মাধ্যমে স্ক্যান করতে একটি ফাইল নির্বাচন করুন';

  @override
  String get selectFile => 'ফাইল নির্বাচন করুন';

  @override
  String get dragDropFile =>
      'ফাইলটি এখানে টেনে আনুন অথবা ব্রাউজ করতে ক্লিক করুন';

  @override
  String get computingHashes => 'ক্রিপ্টোগ্রাফিক হ্যাশ গণনা করা হচ্ছে...';

  @override
  String get scanningEngines => 'নিরাপত্তা ইঞ্জিনে স্ক্যান করা হচ্ছে...';

  @override
  String get uploadConfirmTitle => 'ফাইল আপলোড নিশ্চিতকরণ';

  @override
  String get uploadConfirmDesc =>
      'এই ফাইলের হ্যাশের কোনো পূর্ববর্তী প্রতিবেদন পাওয়া যায়নি। আপনি কি গভীর বিশ্লেষণের জন্য ফাইল আপলোড করতে চান?';

  @override
  String get hashOnlyMode => 'কেবলমাত্র হ্যাশ অনুসন্ধান (কঠোর গোপনীয়তা মোড)';

  @override
  String get fullUploadMode => 'ফাইল আপলোড ও গভীর স্ক্যান';

  @override
  String get summaryTitle => 'স্ক্যানের সারাংশ';

  @override
  String get fileName => 'ফাইলের নাম';

  @override
  String get fileSize => 'ফাইলের আকার';

  @override
  String get hashSha256 => 'SHA-256 হ্যাশ';

  @override
  String get hashSha1 => 'SHA-1 হ্যাশ';

  @override
  String get hashMd5 => 'MD5 হ্যাশ';

  @override
  String get aggregatedVerdict => 'সামগ্রিক রায়';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total এর মধ্যে $flagged প্রদানকারী এই ফাইলটিকে ঝুঁকিপূর্ণ হিসেবে চিহ্নিত করেছে';
  }

  @override
  String get verdictClean => 'নিরাপদ';

  @override
  String get verdictSuspicious => 'সন্দেহজনক';

  @override
  String get verdictMalicious => 'ক্ষতিকারক';

  @override
  String get verdictUnknown => 'অজানা';

  @override
  String get verdictError => 'ত্রুটি';

  @override
  String get statusQueued => 'অপেক্ষমাণ';

  @override
  String get statusScanning => 'স্ক্যান করা হচ্ছে...';

  @override
  String get statusCompleted => 'সম্পন্ন হয়েছে';

  @override
  String get statusFailed => 'ব্যর্থ হয়েছে';

  @override
  String get viewFullReport => 'ব্রাউজারে সম্পূর্ণ প্রতিবেদন দেখুন';

  @override
  String get engineFindings => 'ইঞ্জিনের ফলাফলের বিবরণ';

  @override
  String get engineName => 'ইঞ্জিন';

  @override
  String get engineCategory => 'বিভাগ';

  @override
  String get engineResult => 'ফলাফল';

  @override
  String get fileSizeExceeded => 'ফাইলের আকার সীমা অতিক্রম করেছে';

  @override
  String get shareReport => 'প্রতিবেদন শেয়ার করুন';

  @override
  String get settingsProviders => 'নিরাপত্তা প্রদানকারী';

  @override
  String get settingsPrivacy => 'গোপনীয়তা সেটিংস';

  @override
  String get hashFirstTitle => 'হ্যাশ-ফার্স্ট মোড';

  @override
  String get hashFirstDesc => 'ফাইল আপলোডের অনুরোধের আগে হ্যাশ যাচাই করুন';

  @override
  String get clearHistory => 'স্ক্যান ইতিহাস মুছুন';

  @override
  String get clearHistoryConfirm =>
      'আপনি কি নিশ্চিত যে সমস্ত পূর্ববর্তী স্ক্যান ইতিহাস মুছে ফেলতে চান?';

  @override
  String get historyCleared => 'স্ক্যান ইতিহাস সফলভাবে মুছে ফেলা হয়েছে';

  @override
  String get devSectionTitle => 'ডেভেলপার তথ্য';

  @override
  String get email => 'ইমেল';

  @override
  String get website => 'ওয়েবসাইট';

  @override
  String get copiedToClipboard => 'ক্লিপবোর্ডে অনুলিপি করা হয়েছে';

  @override
  String get copyHash => 'অনুলিপি';

  @override
  String get themeDarkSubtitle => 'পটভূমি #212327 • বোতাম #232627';

  @override
  String get themeLightSubtitle => 'পটভূমি #EFEEF1 • বোতাম #FEFEFE';

  @override
  String get themeSystemSubtitle => 'সিস্টেমের সাথে মিল রাখুন';
}
