// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle =>
      'Kichanganuzi cha Usalama wa Faili za Injini Nyingi';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad ni jukwaa la usalama lililoendelea la kukagua na kuchanganua faili kwenye injini sambamba za usalama ili kugundua programu hasidi na vitisho.';

  @override
  String get splashGetStarted => 'Anza Kuchanganua';

  @override
  String get btnNext => 'Ijayo';

  @override
  String get btnSkip => 'Ruka';

  @override
  String get btnBack => 'Nyuma';

  @override
  String get btnCancel => 'Ghairi';

  @override
  String get btnConfirm => 'Thibitisha';

  @override
  String get btnDone => 'Imekamilika';

  @override
  String get btnSave => 'Hifadhi';

  @override
  String get btnProceed => 'Endelea';

  @override
  String get btnRescan => 'Changanua Tena';

  @override
  String get selectLanguage => 'Chagua Lugha';

  @override
  String get searchLanguage => 'Tafuta lugha...';

  @override
  String get selectTheme => 'Mandhari na Mwonekano';

  @override
  String get chooseThemeSubtitle =>
      'Chagua mandhari unayopendelea kwa matumizi mazuri';

  @override
  String get themeDark => 'Hali ya Giza';

  @override
  String get themeLight => 'Hali ya Mwanga';

  @override
  String get themeSystem => 'Chaguo-msingi la Mfumo';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Uchanganuzi Mpya';

  @override
  String get settings => 'Mipangilio';

  @override
  String get scanHistory => 'Historia ya Uchanganuzi';

  @override
  String get noScanHistory => 'Hakuna uchanganuzi uliopita';

  @override
  String get noScanHistorySubtitle =>
      'Chagua faili ili kuanza kuchanganua kupitia injini za usalama';

  @override
  String get selectFile => 'Chagua Faili';

  @override
  String get dragDropFile =>
      'Buruta na udondoshe faili hapa, au bofya ili kuvinjari';

  @override
  String get computingHashes =>
      'Kukokotoa heshi za siri (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Inachanganua kwenye injini za usalama...';

  @override
  String get uploadConfirmTitle => 'Thibitisha Upakiaji wa Faili';

  @override
  String get uploadConfirmDesc =>
      'Hakuna ripoti ya awali iliyopatikana kwa heshi ya faili hii. Je, ungependa kupakia faili kwa uchambuzi wa kina?';

  @override
  String get hashOnlyMode =>
      'Ukaguzi wa Heshi Pekee (Hali ya Faragha Madhubuti)';

  @override
  String get fullUploadMode => 'Pakia Faili na Changanua Kina';

  @override
  String get summaryTitle => 'Muhtasari wa Uchanganuzi';

  @override
  String get fileName => 'Jina la Faili';

  @override
  String get fileSize => 'Ukubwa wa Faili';

  @override
  String get hashSha256 => 'Heshi ya SHA-256';

  @override
  String get hashSha1 => 'Heshi ya SHA-1';

  @override
  String get hashMd5 => 'Heshi ya MD5';

  @override
  String get aggregatedVerdict => 'Uamuzi wa Jumla';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged kati ya watoa huduma $total wameweka faili hii kama hatari';
  }

  @override
  String get verdictClean => 'Salama';

  @override
  String get verdictSuspicious => 'Inatiliwa Shaka';

  @override
  String get verdictMalicious => 'Hatari';

  @override
  String get verdictUnknown => 'Haijulikani';

  @override
  String get verdictError => 'Hitilafu';

  @override
  String get statusQueued => 'Iko Kwenye Foleni';

  @override
  String get statusScanning => 'Inachanganua...';

  @override
  String get statusCompleted => 'Imekamilika';

  @override
  String get statusFailed => 'Imeshindikana';

  @override
  String get viewFullReport => 'Tazama Ripoti Kamili Kwenye Kivinjari';

  @override
  String get engineFindings => 'Maelezo ya Matokeo ya Injini';

  @override
  String get engineName => 'Injini';

  @override
  String get engineCategory => 'Kitengo';

  @override
  String get engineResult => 'Matokeo';

  @override
  String get fileSizeExceeded => 'Ukubwa wa faili umezidi kikomo';

  @override
  String get shareReport => 'Shiriki Ripoti';

  @override
  String get settingsProviders => 'Watoa Huduma za Usalama';

  @override
  String get settingsPrivacy => 'Mipangilio ya Faragha';

  @override
  String get hashFirstTitle => 'Hali ya Heshi Kwanza';

  @override
  String get hashFirstDesc => 'Kagua heshi kabla ya kuomba kupakia faili';

  @override
  String get clearHistory => 'Futa Historia';

  @override
  String get clearHistoryConfirm =>
      'Je, una uhakika unataka kufuta historia yote ya uchanganuzi?';

  @override
  String get historyCleared => 'Historia ya uchanganuzi imefutwa kikamilifu';

  @override
  String get devSectionTitle => 'Taarifa za Msanidi';

  @override
  String get email => 'Barua pepe';

  @override
  String get website => 'Tovuti';

  @override
  String get copiedToClipboard => 'Imenakiliwa kwenye ubao wa kunakili';

  @override
  String get copyHash => 'Nakili';

  @override
  String get themeDarkSubtitle => 'Mandharinyuma #212327 • Vifungo #232627';

  @override
  String get themeLightSubtitle => 'Mandharinyuma #EFEEF1 • Vifungo #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Linganisha mwonekano wa mfumo';
}
