// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Mai Duba Tsaron Fayiloli Masu Injinoci Da Yawa';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad dandamali ne na tsaro na gaba don dubawa da nazarin fayiloli a cikin injunan tsaro da yawa don gano ƙwayoyin cuta da barazana.';

  @override
  String get splashGetStarted => 'Fara Dubawa';

  @override
  String get btnNext => 'Na gaba';

  @override
  String get btnSkip => 'Tsallake';

  @override
  String get btnBack => 'Baya';

  @override
  String get btnCancel => 'Soke';

  @override
  String get btnConfirm => 'Tabbatar';

  @override
  String get btnDone => 'An gama';

  @override
  String get btnSave => 'Ajiye';

  @override
  String get btnProceed => 'Ci gaba';

  @override
  String get btnRescan => 'Sake dubawa';

  @override
  String get selectLanguage => 'Zaɓi Harshe';

  @override
  String get searchLanguage => 'Bincika harshe...';

  @override
  String get selectTheme => 'Kalar Fuska & Bayyanar';

  @override
  String get chooseThemeSubtitle =>
      'Zaɓi kalar fuska da kake so don kyakkyawar gogewa';

  @override
  String get themeDark => 'Kalar Duhu';

  @override
  String get themeLight => 'Kalar Haske';

  @override
  String get themeSystem => 'Tsarin Na\'ura';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Sabuwar Dubawa';

  @override
  String get settings => 'Saituna';

  @override
  String get scanHistory => 'Tarihin Dubawa';

  @override
  String get noScanHistory => 'Babu tarihin dubawa a baya';

  @override
  String get noScanHistorySubtitle =>
      'Zaɓi fayil don fara dubawa a cikin injunan tsaro';

  @override
  String get selectFile => 'Zaɓi Fayil';

  @override
  String get dragDropFile => 'Jawo ka ajiye fayil a nan, ko danna don zaɓa';

  @override
  String get computingHashes => 'Ana lissafin bayanan sirri na hash...';

  @override
  String get scanningEngines => 'Ana dubawa a cikin injunan tsaro...';

  @override
  String get uploadConfirmTitle => 'Tabbatar da Loda Fayil';

  @override
  String get uploadConfirmDesc =>
      'Ba a sami rahoton baya na wannan fayil ɗin ba. Kuna so ku loda fayil ɗin don bincike mai zurfi?';

  @override
  String get hashOnlyMode => 'Duba Hash Kaɗai (Sirri Mai Tsanani)';

  @override
  String get fullUploadMode => 'Loda Fayil & Duba Mai Zurfi';

  @override
  String get summaryTitle => 'Taƙaitaccen Dubawa';

  @override
  String get fileName => 'Sunan Fayil';

  @override
  String get fileSize => 'Girman Fayil';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Sakamakon Ƙarshe';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged daga cikin $total masu ba da tsaro sun nuna wannan fayil a matsayin mai haɗari';
  }

  @override
  String get verdictClean => 'Lafiyayye';

  @override
  String get verdictSuspicious => 'Abin Zargi';

  @override
  String get verdictMalicious => 'Mai Cutarwa';

  @override
  String get verdictUnknown => 'Ba a sani ba';

  @override
  String get verdictError => 'Kuskure';

  @override
  String get statusQueued => 'A layi';

  @override
  String get statusScanning => 'Ana dubawa...';

  @override
  String get statusCompleted => 'An kammala';

  @override
  String get statusFailed => 'Ba a yi nasara ba';

  @override
  String get viewFullReport => 'Duba Cikakken Rahoto a Browser';

  @override
  String get engineFindings => 'Cikakken Sakamakon Injin';

  @override
  String get engineName => 'Inji';

  @override
  String get engineCategory => 'Rukuni';

  @override
  String get engineResult => 'Sakamako';

  @override
  String get fileSizeExceeded => 'Girman fayil ya wuce iyaka';

  @override
  String get shareReport => 'Raba Rahoto';

  @override
  String get settingsProviders => 'Masu Ba da Tsaro';

  @override
  String get settingsPrivacy => 'Saitunan Sirri';

  @override
  String get hashFirstTitle => 'Fara da Hash';

  @override
  String get hashFirstDesc => 'Duba hash kafin neman loda fayil';

  @override
  String get clearHistory => 'Goge Tarihi';

  @override
  String get clearHistoryConfirm =>
      'Shin kun tabbata kuna son goge duk tarihin dubawa?';

  @override
  String get historyCleared => 'An goge tarihin dubawa cikin nasara';

  @override
  String get devSectionTitle => 'Bayanin Mai Haɓakawa';

  @override
  String get email => 'Imel';

  @override
  String get website => 'Shafin Yanar Gizo';

  @override
  String get copiedToClipboard => 'An kwafa';

  @override
  String get copyHash => 'Kwafa';

  @override
  String get themeDarkSubtitle => 'Fage #212327 • Maballai #232627';

  @override
  String get themeLightSubtitle => 'Fage #EFEEF1 • Maballai #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Daidaita da yanayin na\'ura';
}
