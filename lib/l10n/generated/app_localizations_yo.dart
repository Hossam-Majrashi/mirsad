// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yoruba (`yo`).
class AppLocalizationsYo extends AppLocalizations {
  AppLocalizationsYo([String locale = 'yo']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Ayẹwo Aabo Faili Ẹrọ-Pupọ';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad jẹ pẹpẹ aabo to ti ni ilọsiwaju fun ṣiṣayẹwo ati itupalẹ awọn faili kọja ọpọlọpọ awọn ẹrọ aabo lati ri malware ati awọn ewu.';

  @override
  String get splashGetStarted => 'Bẹrẹ Ayẹwo';

  @override
  String get btnNext => 'Itele';

  @override
  String get btnSkip => 'Rekọja';

  @override
  String get btnBack => 'Pada';

  @override
  String get btnCancel => 'Fagilee';

  @override
  String get btnConfirm => 'Jẹrisi';

  @override
  String get btnDone => 'Pari';

  @override
  String get btnSave => 'Fipamọ';

  @override
  String get btnProceed => 'Tesiwaju';

  @override
  String get btnRescan => 'Tun yẹwo';

  @override
  String get selectLanguage => 'Yan Ede';

  @override
  String get searchLanguage => 'Wa ede...';

  @override
  String get selectTheme => 'Àkòrí & Irisi';

  @override
  String get chooseThemeSubtitle => 'Yan àkòrí ti o fẹran fun iriri ti o dara';

  @override
  String get themeDark => 'Ipo Dudu';

  @override
  String get themeLight => 'Ipo Imọlẹ';

  @override
  String get themeSystem => 'Aiyipada Eto';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Ayẹwo Titun';

  @override
  String get settings => 'Eto';

  @override
  String get scanHistory => 'Itan Ayẹwo';

  @override
  String get noScanHistory => 'Ko si awọn ayẹwo ti tẹlẹ';

  @override
  String get noScanHistorySubtitle =>
      'Yan faili kan lati bẹrẹ ayẹwo pẹlu awọn ẹrọ aabo';

  @override
  String get selectFile => 'Yan Faili';

  @override
  String get dragDropFile => 'Fa ki o ju faili si ibi, tabi tẹ lati yan';

  @override
  String get computingHashes => 'Ṣiṣiro awọn hashes cryptographic...';

  @override
  String get scanningEngines => 'Nṣayẹwo kọja awọn ẹrọ aabo...';

  @override
  String get uploadConfirmTitle => 'Jẹrisi Gbigbe Faili';

  @override
  String get uploadConfirmDesc =>
      'Ko si ijabọ iṣaaju ti a rii fun hash faili yii. Ṣe o fẹ gbe faili naa fun itupalẹ jinlẹ?';

  @override
  String get hashOnlyMode => 'Ṣawari Hash Nikan (Ipo Aṣiri Ti o Muna)';

  @override
  String get fullUploadMode => 'Gbe Faili & Ayẹwo Jinlẹ';

  @override
  String get summaryTitle => 'Akopọ Ayẹwo';

  @override
  String get fileName => 'Orukọ Faili';

  @override
  String get fileSize => 'Iwọn Faili';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Idajọ Lapapọ';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged ninu $total awọn olupese samisi faili yii bi eewu';
  }

  @override
  String get verdictClean => 'Mọ';

  @override
  String get verdictSuspicious => 'Ifura';

  @override
  String get verdictMalicious => 'Ipalara';

  @override
  String get verdictUnknown => 'Aimọ';

  @override
  String get verdictError => 'Aṣiṣe';

  @override
  String get statusQueued => 'Lori Layi';

  @override
  String get statusScanning => 'Nṣayẹwo...';

  @override
  String get statusCompleted => 'Pari';

  @override
  String get statusFailed => 'Kuna';

  @override
  String get viewFullReport => 'Wo Iroyin Kikun ni Browser';

  @override
  String get engineFindings => 'Awọn alaye Awari Ẹrọ';

  @override
  String get engineName => 'Ẹrọ';

  @override
  String get engineCategory => 'Ẹka';

  @override
  String get engineResult => 'Esi';

  @override
  String get fileSizeExceeded => 'Iwọn faili kọja opin ti a gba laaye';

  @override
  String get shareReport => 'Pin Iroyin';

  @override
  String get settingsProviders => 'Awọn Olupese Aabo';

  @override
  String get settingsPrivacy => 'Eto Aṣiri';

  @override
  String get hashFirstTitle => 'Ipo Hash Ni Akọkọ';

  @override
  String get hashFirstDesc => 'Ṣayẹwo hash ṣaaju ki o to beere gbigbe faili';

  @override
  String get clearHistory => 'Nu Itan Rẹ';

  @override
  String get clearHistoryConfirm =>
      'Ṣe o da ọ loju pe o fẹ pa gbogbo itan ayẹwo rẹ?';

  @override
  String get historyCleared => 'Itan ayẹwo ti parẹ ni aṣeyọri';

  @override
  String get devSectionTitle => 'Alaye Olùgbéejáde';

  @override
  String get email => 'Imeeli';

  @override
  String get website => 'Oju opo wẹẹbu';

  @override
  String get copiedToClipboard => 'Daakọ si clipboard';

  @override
  String get copyHash => 'Daakọ';

  @override
  String get themeDarkSubtitle => 'Ipilẹ #212327 • Awọn bọtini #232627';

  @override
  String get themeLightSubtitle => 'Ipilẹ #EFEEF1 • Awọn bọtini #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Ba irisi eto mu';
}
