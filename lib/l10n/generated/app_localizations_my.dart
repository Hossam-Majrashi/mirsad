// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'အင်ဂျင်စုံ ဖိုင်လုံခြုံရေး စစ်ဆေးစနစ်';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad သည် ဗိုင်းရပ်စ်များနှင့် ခြိမ်းခြောက်မှုများကို ရှာဖွေဖော်ထုတ်ရန် အပြိုင်လုံခြုံရေးအင်ဂျင်များစွာဖြင့် ဖိုင်များကို စစ်ဆေးခွဲခြမ်းစိတ်ဖြာပေးသည့် အဆင့်မြင့်စနစ်ဖြစ်ပါသည်။';

  @override
  String get splashGetStarted => 'စစ်ဆေးမှု စတင်ရန်';

  @override
  String get btnNext => 'ရှေ့သို့';

  @override
  String get btnSkip => 'ကျော်ရန်';

  @override
  String get btnBack => 'နောက်သို့';

  @override
  String get btnCancel => 'ပယ်ဖျက်ရန်';

  @override
  String get btnConfirm => 'အတည်ပြုရန်';

  @override
  String get btnDone => 'ပြီးပါပြီ';

  @override
  String get btnSave => 'သိမ်းဆည်းရန်';

  @override
  String get btnProceed => 'ဆက်လက်လုပ်ဆောင်ရန်';

  @override
  String get btnRescan => 'ပြန်လည်စစ်ဆေးရန်';

  @override
  String get selectLanguage => 'ဘာသာစကား ရွေးချယ်ပါ';

  @override
  String get searchLanguage => 'ဘာသာစကား ရှာဖွေရန်...';

  @override
  String get selectTheme => 'အသွင်အပြင်နှင့် အရောင်';

  @override
  String get chooseThemeSubtitle =>
      'အဆင်ပြေစွာ အသုံးပြုနိုင်ရန် သင်နှစ်သက်ရာ အသွင်အပြင်ကို ရွေးချယ်ပါ';

  @override
  String get themeDark => 'အမှောင် မုဒ်';

  @override
  String get themeLight => 'အလင်း မုဒ်';

  @override
  String get themeSystem => 'စနစ် မူရင်းအတိုင်း';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'စစ်ဆေးမှု အသစ်';

  @override
  String get settings => 'ဆက်တင်များ';

  @override
  String get scanHistory => 'စစ်ဆေးမှု မှတ်တမ်း';

  @override
  String get noScanHistory => 'ယခင် စစ်ဆေးမှုများ မရှိသေးပါ';

  @override
  String get noScanHistorySubtitle =>
      'လုံခြုံရေးအင်ဂျင်များဖြင့် စစ်ဆေးရန် ဖိုင်တစ်ခု ရွေးချယ်ပါ';

  @override
  String get selectFile => 'ဖိုင် ရွေးချယ်ပါ';

  @override
  String get dragDropFile =>
      'ဖိုင်ကို ဤနေရာသို့ ဆွဲထည့်ပါ သို့မဟုတ် ရွေးချယ်ရန် နှိပ်ပါ';

  @override
  String get computingHashes => 'ဟက်ရှ်တန်ဖိုးများ တွက်ချက်နေသည်...';

  @override
  String get scanningEngines => 'လုံခြုံရေးအင်ဂျင်များတွင် စစ်ဆေးနေသည်...';

  @override
  String get uploadConfirmTitle => 'ဖိုင်တင်ရန် အတည်ပြုပါ';

  @override
  String get uploadConfirmDesc =>
      'ဤဖိုင်ဟက်ရှ်အတွက် ယခင်အစီရင်ခံစာ မတွေ့ရှိပါ။ အသေးစိတ်စစ်ဆေးရန် ဖိုင်ကို တင်လိုပါသလား?';

  @override
  String get hashOnlyMode => 'ဟက်ရှ်သာ စစ်ဆေးရန် (ကိုယ်ရေးလုံခြုံမှု အပြည့်အဝ)';

  @override
  String get fullUploadMode => 'ဖိုင်တင်၍ အသေးစိတ် စစ်ဆေးရန်';

  @override
  String get summaryTitle => 'စစ်ဆေးမှု အကျဉ်းချုပ်';

  @override
  String get fileName => 'ဖိုင်အမည်';

  @override
  String get fileSize => 'ဖိုင်အရွယ်အစား';

  @override
  String get hashSha256 => 'SHA-256 ဟက်ရှ်';

  @override
  String get hashSha1 => 'SHA-1 ဟက်ရှ်';

  @override
  String get hashMd5 => 'MD5 ဟက်ရှ်';

  @override
  String get aggregatedVerdict => 'ခြုံငုံသုံးသပ်ချက်';

  @override
  String flaggedCount(int flagged, int total) {
    return 'အင်ဂျင် $total ခုအနက် $flagged ခုက ဤဖိုင်ကို အန္တရာယ်ရှိအဖြစ် သတ်မှတ်ခဲ့သည်';
  }

  @override
  String get verdictClean => 'လုံခြုံသည်';

  @override
  String get verdictSuspicious => 'သံသယဖြစ်ဖွယ်';

  @override
  String get verdictMalicious => 'အန္တရာယ်ရှိသည်';

  @override
  String get verdictUnknown => 'မသိရပါ';

  @override
  String get verdictError => 'အမှားအယွင်း';

  @override
  String get statusQueued => 'တန်းစီနေသည်';

  @override
  String get statusScanning => 'စစ်ဆေးနေသည်...';

  @override
  String get statusCompleted => 'ပြီးဆုံးပါပြီ';

  @override
  String get statusFailed => 'မအောင်မြင်ပါ';

  @override
  String get viewFullReport => 'အစီရင်ခံစာ အပြည့်အစုံကို ဘရောက်ဇာတွင် ကြည့်ရန်';

  @override
  String get engineFindings => 'အင်ဂျင် တွေ့ရှိချက် အသေးစိတ်';

  @override
  String get engineName => 'အင်ဂျင်';

  @override
  String get engineCategory => 'အမျိုးအစား';

  @override
  String get engineResult => 'ရလဒ်';

  @override
  String get fileSizeExceeded => 'ဖိုင်အရွယ်အစား ကန့်သတ်ချက်ထက် ကျော်လွန်နေသည်';

  @override
  String get shareReport => 'အစီရင်ခံစာ မျှဝေရန်';

  @override
  String get settingsProviders => 'လုံခြုံရေး အင်ဂျင်များ';

  @override
  String get settingsPrivacy => 'ကိုယ်ရေးလုံခြုံမှု ဆက်တင်များ';

  @override
  String get hashFirstTitle => 'ဟက်ရှ် ဦးစားပေး မုဒ်';

  @override
  String get hashFirstDesc => 'ဖိုင်မတင်မီ ဟက်ရှ်ကို ဦးစွာ ရှာဖွေပါ';

  @override
  String get clearHistory => 'မှတ်တမ်း ရှင်းလင်းရန်';

  @override
  String get clearHistoryConfirm =>
      'စစ်ဆေးမှုမှတ်တမ်းအားလုံးကို ဖျက်ပစ်ရန် သေချာပါသလား?';

  @override
  String get historyCleared => 'မှတ်တမ်းများ အောင်မြင်စွာ ဖျက်ပစ်ပြီးပါပြီ';

  @override
  String get devSectionTitle => 'တီထွင်သူ အချက်အလက်';

  @override
  String get email => 'အီးမေးလ်';

  @override
  String get website => 'ဝဘ်ဆိုက်';

  @override
  String get copiedToClipboard => 'ကူးယူပြီးပါပြီ';

  @override
  String get copyHash => 'ကူးယူပါ';

  @override
  String get themeDarkSubtitle => 'နောက်ခံ #212327 • ခလုတ်များ #232627';

  @override
  String get themeLightSubtitle => 'နောက်ခံ #EFEEF1 • ခလုတ်များ #FEFEFE';

  @override
  String get themeSystemSubtitle => 'စနစ်အသွင်အပြင်နှင့် ကိုက်ညီစေရန်';
}
