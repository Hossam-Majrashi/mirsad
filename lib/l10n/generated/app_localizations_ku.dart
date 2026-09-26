// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Skenera Ewlehiya Pelan a Pir-Motor';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad platformek ewlehiyê ya parastinê ya pêşkeftî ye ku pelan bi rêya motorên ewlehiyê yên paralel analîz dike da ku xetereyan bibîne.';

  @override
  String get splashGetStarted => 'Dest bi Skankirinê Bike';

  @override
  String get btnNext => 'Pêşve';

  @override
  String get btnSkip => 'Derbas bibe';

  @override
  String get btnBack => 'Vegere';

  @override
  String get btnCancel => 'Betal bike';

  @override
  String get btnConfirm => 'Pejirandin';

  @override
  String get btnDone => 'Qediya';

  @override
  String get btnSave => 'Tomar bike';

  @override
  String get btnProceed => 'Berdewam bike';

  @override
  String get btnRescan => 'Dîsa Skan bike';

  @override
  String get selectLanguage => 'Ziman Hilbijêre';

  @override
  String get searchLanguage => 'Ziman bigere...';

  @override
  String get selectTheme => 'Rûkar û Dîmen';

  @override
  String get chooseThemeSubtitle =>
      'Ji bo ezmûnek rehet rûkara xweya bijarte hilbijêrin';

  @override
  String get themeDark => 'Rewşa Tarî';

  @override
  String get themeLight => 'Rewşa Ronahî';

  @override
  String get themeSystem => 'Standardê Pergalê';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Skana Nû';

  @override
  String get settings => 'Mîheng';

  @override
  String get scanHistory => 'Dîroka Skanê';

  @override
  String get noScanHistory => 'Skanên berê tune ne';

  @override
  String get noScanHistorySubtitle =>
      'Ji bo skankirina bi motorên ewlehiyê pelek hilbijêrin';

  @override
  String get selectFile => 'Pel Hilbijêre';

  @override
  String get dragDropFile => 'Pelek bikişînin vir an jî bikirtînin';

  @override
  String get computingHashes => 'Hesabkirina hashên krîptografîk...';

  @override
  String get scanningEngines => 'Di motorên ewlehiyê de tê skankirin...';

  @override
  String get uploadConfirmTitle => 'Barkirina Pelê Pejirîne';

  @override
  String get uploadConfirmDesc =>
      'Ji bo hasha vî pelî rapora berê nehate dîtin. Ma hûn dixwazin ji bo analîzek kûr pelê bar bikin?';

  @override
  String get hashOnlyMode => 'Tenê Lêgerîna Hashê (Ewlehiya Zehf)';

  @override
  String get fullUploadMode => 'Pelê Bar Bike & Skana Kûr';

  @override
  String get summaryTitle => 'Kurteya Skanê';

  @override
  String get fileName => 'Navê Pelê';

  @override
  String get fileSize => 'Mezinahiya Pelê';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Biryara Giştî';

  @override
  String flaggedCount(int flagged, int total) {
    return 'Ji $total motoran $flagged motoran ev pel wekî xeternak nîşan kir';
  }

  @override
  String get verdictClean => 'Paqij';

  @override
  String get verdictSuspicious => 'Bi guman';

  @override
  String get verdictMalicious => 'Xeternak';

  @override
  String get verdictUnknown => 'Nenas';

  @override
  String get verdictError => 'Çewtî';

  @override
  String get statusQueued => 'Di dorê de ye';

  @override
  String get statusScanning => 'Tê skankirin...';

  @override
  String get statusCompleted => 'Qediya';

  @override
  String get statusFailed => 'Bi ser neket';

  @override
  String get viewFullReport => 'Rapora Tevahî Di Gerokê De Bibîne';

  @override
  String get engineFindings => 'Hûrguliyên Encamên Motoran';

  @override
  String get engineName => 'Motor';

  @override
  String get engineCategory => 'Kategorî';

  @override
  String get engineResult => 'Encam';

  @override
  String get fileSizeExceeded => 'Mezinahiya pelê ji sînor derbas dibe';

  @override
  String get shareReport => 'Raporê Parve Bike';

  @override
  String get settingsProviders => 'Pêşkêşkerên Ewlehiyê';

  @override
  String get settingsPrivacy => 'Mîhengên Nepenîtiyê';

  @override
  String get hashFirstTitle => 'Pêşî Rewşa Hashê';

  @override
  String get hashFirstDesc =>
      'Berî ku daxwaza barkirina pelê were kirin hashê kontrol bike';

  @override
  String get clearHistory => 'Dîrokê Paqij Bike';

  @override
  String get clearHistoryConfirm =>
      'Ma hûn guman dikin ku hûn dixwazin hemî dîroka skanê jê bibin?';

  @override
  String get historyCleared => 'Dîroka skanê bi serkeftî hate paqijkirin';

  @override
  String get devSectionTitle => 'Agahiyên Pêşvebir';

  @override
  String get email => 'E-name';

  @override
  String get website => 'Malper';

  @override
  String get copiedToClipboard => 'Li bîrgehê hate kopîkirin';

  @override
  String get copyHash => 'Kopî bike';

  @override
  String get themeDarkSubtitle => 'Paşxane #212327 • Bişkok #232627';

  @override
  String get themeLightSubtitle => 'Paşxane #EFEEF1 • Bişkok #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Li gorî pergala amûrê';
}
