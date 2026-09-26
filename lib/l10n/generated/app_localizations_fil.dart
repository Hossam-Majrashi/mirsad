// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Multi-Engine Tagasuri ng Seguridad ng File';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Ang Mirsad ay isang advanced na platform ng seguridad upang suriin ang mga file sa maraming engine upang makakita ng malware at mga banta.';

  @override
  String get splashGetStarted => 'Simulan ang Pagsusuri';

  @override
  String get btnNext => 'Susunod';

  @override
  String get btnSkip => 'Laktawan';

  @override
  String get btnBack => 'Bumalik';

  @override
  String get btnCancel => 'Kanselahin';

  @override
  String get btnConfirm => 'Kumpirmahin';

  @override
  String get btnDone => 'Tapos na';

  @override
  String get btnSave => 'I-save';

  @override
  String get btnProceed => 'Magpatuloy';

  @override
  String get btnRescan => 'Suriing Muli';

  @override
  String get selectLanguage => 'Pumili ng Wika';

  @override
  String get searchLanguage => 'Maghanap ng wika...';

  @override
  String get selectTheme => 'Tema at Hitsura';

  @override
  String get chooseThemeSubtitle =>
      'Piliin ang nais na tema para sa magandang karanasan';

  @override
  String get themeDark => 'Madilim na Mode';

  @override
  String get themeLight => 'Maliwanag na Mode';

  @override
  String get themeSystem => 'Default ng Sistema';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Bagong Pagsusuri';

  @override
  String get settings => 'Mga Setting';

  @override
  String get scanHistory => 'Kasaysayan ng Pagsusuri';

  @override
  String get noScanHistory => 'Walang nakaraang pagsusuri';

  @override
  String get noScanHistorySubtitle =>
      'Pumili ng file upang masuri sa mga engine ng seguridad';

  @override
  String get selectFile => 'Pumili ng File';

  @override
  String get dragDropFile =>
      'I-drag at i-drop ang file dito, o mag-click upang mag-browse';

  @override
  String get computingHashes =>
      'Kinakalkula ang cryptographic hashes (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Sinusuri sa mga engine ng seguridad...';

  @override
  String get uploadConfirmTitle => 'Kumpirmahin ang Pag-upload ng File';

  @override
  String get uploadConfirmDesc =>
      'Walang nakitang nakaraang ulat para sa hash na ito. Nais mo bang i-upload ang file para sa malalim na pagsusuri?';

  @override
  String get hashOnlyMode => 'Paghahanap ng Hash Lamang (Mahigpit na Privacy)';

  @override
  String get fullUploadMode => 'I-upload ang File at Malalimang Suriin';

  @override
  String get summaryTitle => 'Buod ng Pagsusuri';

  @override
  String get fileName => 'Pangalan ng File';

  @override
  String get fileSize => 'Laki ng File';

  @override
  String get hashSha256 => 'SHA-256 Hash';

  @override
  String get hashSha1 => 'SHA-1 Hash';

  @override
  String get hashMd5 => 'MD5 Hash';

  @override
  String get aggregatedVerdict => 'Pangkalahatang Hatol';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged sa $total provider ang nagmarka sa file na ito bilang banta';
  }

  @override
  String get verdictClean => 'Ligtas';

  @override
  String get verdictSuspicious => 'Kakahina-hinala';

  @override
  String get verdictMalicious => 'Mapanganib';

  @override
  String get verdictUnknown => 'Hindi Alam';

  @override
  String get verdictError => 'Error';

  @override
  String get statusQueued => 'Nasa Pila';

  @override
  String get statusScanning => 'Sinusuri...';

  @override
  String get statusCompleted => 'Kumpleto';

  @override
  String get statusFailed => 'Nabigo';

  @override
  String get viewFullReport => 'Tingnan ang Buong Ulat sa Browser';

  @override
  String get engineFindings => 'Detalye ng mga Natuklasan ng Engine';

  @override
  String get engineName => 'Engine';

  @override
  String get engineCategory => 'Kategorya';

  @override
  String get engineResult => 'Resulta';

  @override
  String get fileSizeExceeded => 'Lumagpas ang laki ng file sa limitasyon';

  @override
  String get shareReport => 'Ibahagi ang Ulat';

  @override
  String get settingsProviders => 'Mga Provider ng Seguridad';

  @override
  String get settingsPrivacy => 'Mga Setting ng Privacy';

  @override
  String get hashFirstTitle => 'Hash Muna Mode';

  @override
  String get hashFirstDesc =>
      'Suriin muna ang hash bago humiling ng pag-upload ng file';

  @override
  String get clearHistory => 'Burahin ang Kasaysayan';

  @override
  String get clearHistoryConfirm =>
      'Sigurado ka bang nais mong burahin ang lahat ng nakaraang pagsusuri?';

  @override
  String get historyCleared =>
      'Matagumpay na nabura ang kasaysayan ng pagsusuri';

  @override
  String get devSectionTitle => 'Impormasyon ng Developer';

  @override
  String get email => 'Email';

  @override
  String get website => 'Website';

  @override
  String get copiedToClipboard => 'Nakopya sa clipboard';

  @override
  String get copyHash => 'Kopyahin';

  @override
  String get themeDarkSubtitle => 'Background #212327 • Mga Pindutan #232627';

  @override
  String get themeLightSubtitle => 'Background #EFEEF1 • Mga Pindutan #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Itugma sa hitsura ng sistema';
}
