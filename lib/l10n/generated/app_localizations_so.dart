// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Baare Amni Faylka oo Matoorro Badan Leh';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad waa madal amni oo horumarsan oo lagu baaro laguna falanqeeyo faylasha matoorro amni oo dhowr ah si loo ogaado khataraha iyo xumaan-falka.';

  @override
  String get splashGetStarted => 'Bilow Baaritaanka';

  @override
  String get btnNext => 'Xiga';

  @override
  String get btnSkip => 'Ka gudub';

  @override
  String get btnBack => 'Dib u noqo';

  @override
  String get btnCancel => 'Tirtir';

  @override
  String get btnConfirm => 'Xaqiiji';

  @override
  String get btnDone => 'Dhammaystiran';

  @override
  String get btnSave => 'Keydi';

  @override
  String get btnProceed => 'Sii wad';

  @override
  String get btnRescan => 'Dib u baar';

  @override
  String get selectLanguage => 'Dooro Luqadda';

  @override
  String get searchLanguage => 'Raadi luqad...';

  @override
  String get selectTheme => 'Muuqaalka & Qaabka';

  @override
  String get chooseThemeSubtitle =>
      'Dooro qaabka aad jeceshahay si aad u hesho khibrad wanaagsan';

  @override
  String get themeDark => 'Qaabka Madow';

  @override
  String get themeLight => 'Qaabka Cad';

  @override
  String get themeSystem => 'Nidaamka Caadiga ah';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Baaritaan Cusub';

  @override
  String get settings => 'Dejinta';

  @override
  String get scanHistory => 'Taariikhda Baaritaanka';

  @override
  String get noScanHistory => 'Ma jiraan baaritaanno hore';

  @override
  String get noScanHistorySubtitle =>
      'Dooro fayl si aad ugu baarto matoorrada amniga';

  @override
  String get selectFile => 'Dooro Fayl';

  @override
  String get dragDropFile =>
      'Faylka halkan soo jiid oo dhig, ama guji si aad u doorato';

  @override
  String get computingHashes =>
      'Xisaabinta xogta qarsoon (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Waxaa lagu baarayaa matoorrada amniga...';

  @override
  String get uploadConfirmTitle => 'Xaqiiji Soo Gelinta Faylka';

  @override
  String get uploadConfirmDesc =>
      'Lama helin warbixin hore oo ku saabsan faylkan. Ma rabtaa inaad u soo geliso falanqayn qoto dheer?';

  @override
  String get hashOnlyMode => 'Baaritaan Ku Kooban Hash (Ilaalinta Qarsoodiga)';

  @override
  String get fullUploadMode => 'Soo Geli Faylka & Baar Dhameystiran';

  @override
  String get summaryTitle => 'Soo Koobidda Baaritaanka';

  @override
  String get fileName => 'Magaca Faylka';

  @override
  String get fileSize => 'Xaddiga Faylka';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Natiijada Guud';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged ka mid ah $total adeeg-bixiye ayaa faylkan ku calaamadeeyay khatar';
  }

  @override
  String get verdictClean => 'Nadiif ah';

  @override
  String get verdictSuspicious => 'Shaki leh';

  @override
  String get verdictMalicious => 'Khatar ah';

  @override
  String get verdictUnknown => 'Lama yaqaan';

  @override
  String get verdictError => 'Khalad';

  @override
  String get statusQueued => 'Saf ku jira';

  @override
  String get statusScanning => 'Waa la baarayaa...';

  @override
  String get statusCompleted => 'Waa dhammaaday';

  @override
  String get statusFailed => 'Wuu guuldareystay';

  @override
  String get viewFullReport => 'Ku arag Warbixinta oo Buuxda Baaraha';

  @override
  String get engineFindings => 'Faahfaahinta Natiijooyinka Matoorka';

  @override
  String get engineName => 'Matoor';

  @override
  String get engineCategory => 'Qeyb';

  @override
  String get engineResult => 'Natiijo';

  @override
  String get fileSizeExceeded => 'Cabbirka faylku wuxuu ka badan yahay xadka';

  @override
  String get shareReport => 'Wadaag Warbixinta';

  @override
  String get settingsProviders => 'Bixiyeyaasha Amniga';

  @override
  String get settingsPrivacy => 'Dejinta Qarsoodiga';

  @override
  String get hashFirstTitle => 'Habka Hash-ka Koowaad';

  @override
  String get hashFirstDesc =>
      'Hubi hash-ka ka hor inta aan la codsan soo gelinta';

  @override
  String get clearHistory => 'Tirtir Taariikhda';

  @override
  String get clearHistoryConfirm =>
      'Ma hubtaa inaad tirtirto dhammaan taariikhda baaritaanka hore?';

  @override
  String get historyCleared =>
      'Taariikhda baaritaanka si guul leh ayaa loo tirtiray';

  @override
  String get devSectionTitle => 'Macluumaadka Sameeyaha';

  @override
  String get email => 'Iimayl';

  @override
  String get website => 'Bogga Internetka';

  @override
  String get copiedToClipboard => 'Waa la koobiyay';

  @override
  String get copyHash => 'Nuqul';

  @override
  String get themeDarkSubtitle => 'Gadaal #212327 • Badhamada #232627';

  @override
  String get themeLightSubtitle => 'Gadaal #EFEEF1 • Badhamada #FEFEFE';

  @override
  String get themeSystemSubtitle => 'U dhiganta nidaamka';
}
