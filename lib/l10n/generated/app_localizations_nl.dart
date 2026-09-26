// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Multi-Engine Bestand Veiligheidsscanner';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad is een geavanceerd defensief beveiligingsplatform voor het scannen en analyseren van bestanden via meerdere parallelle beveiligingsengines.';

  @override
  String get splashGetStarted => 'Start Scannen';

  @override
  String get btnNext => 'Volgende';

  @override
  String get btnSkip => 'Overslaan';

  @override
  String get btnBack => 'Terug';

  @override
  String get btnCancel => 'Annuleren';

  @override
  String get btnConfirm => 'Bevestigen';

  @override
  String get btnDone => 'Klaar';

  @override
  String get btnSave => 'Opslaan';

  @override
  String get btnProceed => 'Doorgaan';

  @override
  String get btnRescan => 'Opnieuw Scannen';

  @override
  String get selectLanguage => 'Selecteer Taal';

  @override
  String get searchLanguage => 'Taal zoeken...';

  @override
  String get selectTheme => 'Thema en Weergave';

  @override
  String get chooseThemeSubtitle =>
      'Kies uw voorkeursthema voor een comfortabele ervaring';

  @override
  String get themeDark => 'Donkere Modus';

  @override
  String get themeLight => 'Lichte Modus';

  @override
  String get themeSystem => 'Systeemstandaard';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Nieuwe Scan';

  @override
  String get settings => 'Instellingen';

  @override
  String get scanHistory => 'Scangeschiedenis';

  @override
  String get noScanHistory => 'Geen eerdere scans gevonden';

  @override
  String get noScanHistorySubtitle =>
      'Kies een bestand om te scannen met geavanceerde beveiligingsengines';

  @override
  String get selectFile => 'Kies Bestand';

  @override
  String get dragDropFile =>
      'Sleep een bestand hierheen of klik om te bladeren';

  @override
  String get computingHashes =>
      'Cryptografische hashes berekenen (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Scannen op beveiligingsengines...';

  @override
  String get uploadConfirmTitle => 'Uploaden van Bestand Bevestigen';

  @override
  String get uploadConfirmDesc =>
      'Geen eerder rapport gevonden voor deze hash. Wilt u het bestand uploaden voor diepgaande analyse?';

  @override
  String get hashOnlyMode => 'Alleen Hash Zoeken (Strikte Privacy)';

  @override
  String get fullUploadMode => 'Bestand Uploaden & Diepe Scan';

  @override
  String get summaryTitle => 'Scanoverzicht';

  @override
  String get fileName => 'Bestandsnaam';

  @override
  String get fileSize => 'Bestandsgrootte';

  @override
  String get hashSha256 => 'SHA-256 Hash';

  @override
  String get hashSha1 => 'SHA-1 Hash';

  @override
  String get hashMd5 => 'MD5 Hash';

  @override
  String get aggregatedVerdict => 'Algemeen Oordeel';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged van de $total providers hebben dit bestand als verdacht gemarkeerd';
  }

  @override
  String get verdictClean => 'Schoon';

  @override
  String get verdictSuspicious => 'Verdacht';

  @override
  String get verdictMalicious => 'Schadelijk';

  @override
  String get verdictUnknown => 'Onbekend';

  @override
  String get verdictError => 'Fout';

  @override
  String get statusQueued => 'In de wachtrij';

  @override
  String get statusScanning => 'Scannen...';

  @override
  String get statusCompleted => 'Voltooid';

  @override
  String get statusFailed => 'Mislukt';

  @override
  String get viewFullReport => 'Bekijk Volledig Rapport in Browser';

  @override
  String get engineFindings => 'Gedetailleerde Enginebevindingen';

  @override
  String get engineName => 'Engine';

  @override
  String get engineCategory => 'Categorie';

  @override
  String get engineResult => 'Resultaat';

  @override
  String get fileSizeExceeded => 'Bestandsgrootte overschrijdt providerlimiet';

  @override
  String get shareReport => 'Rapport Delen';

  @override
  String get settingsProviders => 'Beveiligingsengines';

  @override
  String get settingsPrivacy => 'Privacy-instellingen';

  @override
  String get hashFirstTitle => 'Eerst Hash Modus';

  @override
  String get hashFirstDesc =>
      'Controleer eerst de hash alvorens bestandsupload te vragen';

  @override
  String get clearHistory => 'Geschiedenis Wissen';

  @override
  String get clearHistoryConfirm =>
      'Weet u zeker dat u alle eerdere scangeschiedenis wilt wissen?';

  @override
  String get historyCleared => 'Scangeschiedenis succesvol gewist';

  @override
  String get devSectionTitle => 'Ontwikkelaarsinformatie';

  @override
  String get email => 'E-mail';

  @override
  String get website => 'Website';

  @override
  String get copiedToClipboard => 'Gekopieerd naar klembord';

  @override
  String get copyHash => 'Kopiëren';

  @override
  String get themeDarkSubtitle => 'Achtergrond #212327 • Knoppen #232627';

  @override
  String get themeLightSubtitle => 'Achtergrond #EFEEF1 • Knoppen #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Aanpassen aan systeemweergave';
}
