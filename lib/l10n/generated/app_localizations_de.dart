// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Multi-Engine-Dateisicherheits-Scanner';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad ist eine fortschrittliche defensive Sicherheitsplattform zum Scannen und Analysieren von Dateien über mehrere parallele Sicherheits-Engines.';

  @override
  String get splashGetStarted => 'Scan starten';

  @override
  String get btnNext => 'Weiter';

  @override
  String get btnSkip => 'Überspringen';

  @override
  String get btnBack => 'Zurück';

  @override
  String get btnCancel => 'Abbrechen';

  @override
  String get btnConfirm => 'Bestätigen';

  @override
  String get btnDone => 'Fertig';

  @override
  String get btnSave => 'Speichern';

  @override
  String get btnProceed => 'Fortfahren';

  @override
  String get btnRescan => 'Erneut scannen';

  @override
  String get selectLanguage => 'Sprache wählen';

  @override
  String get searchLanguage => 'Sprache suchen...';

  @override
  String get selectTheme => 'Design & Erscheinungsbild';

  @override
  String get chooseThemeSubtitle =>
      'Wählen Sie Ihr bevorzugtes Design für eine angenehme Nutzung';

  @override
  String get themeDark => 'Dunkler Modus';

  @override
  String get themeLight => 'Heller Modus';

  @override
  String get themeSystem => 'Systemstandard';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Neuer Scan';

  @override
  String get settings => 'Einstellungen';

  @override
  String get scanHistory => 'Scan-Verlauf';

  @override
  String get noScanHistory => 'Keine vorherigen Scans vorhanden';

  @override
  String get noScanHistorySubtitle =>
      'Wählen Sie eine Datei, um die Sicherheitsüberprüfung zu starten';

  @override
  String get selectFile => 'Datei auswählen';

  @override
  String get dragDropFile => 'Datei hierher ziehen oder klicken zum Auswählen';

  @override
  String get computingHashes =>
      'Kryptografische Hashes werden berechnet (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Sicherheits-Engines scannen die Datei...';

  @override
  String get uploadConfirmTitle => 'Datei-Upload bestätigen';

  @override
  String get uploadConfirmDesc =>
      'Für diesen Datei-Hash wurde kein früherer Bericht gefunden. Möchten Sie die Datei für eine Tiefenanalyse hochladen?';

  @override
  String get hashOnlyMode => 'Nur Hash-Suche (Strikter Datenschutz)';

  @override
  String get fullUploadMode => 'Datei hochladen & Tiefenscan';

  @override
  String get summaryTitle => 'Scan-Zusammenfassung';

  @override
  String get fileName => 'Dateiname';

  @override
  String get fileSize => 'Dateigröße';

  @override
  String get hashSha256 => 'SHA-256-Hash';

  @override
  String get hashSha1 => 'SHA-1-Hash';

  @override
  String get hashMd5 => 'MD5-Hash';

  @override
  String get aggregatedVerdict => 'Gesamturteil';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged von $total Anbietern haben diese Datei als Bedrohung eingestuft';
  }

  @override
  String get verdictClean => 'Sauber';

  @override
  String get verdictSuspicious => 'Verdächtig';

  @override
  String get verdictMalicious => 'Bösartig';

  @override
  String get verdictUnknown => 'Unbekannt';

  @override
  String get verdictError => 'Fehler';

  @override
  String get statusQueued => 'In Warteschlange';

  @override
  String get statusScanning => 'Wird gescannt...';

  @override
  String get statusCompleted => 'Abgeschlossen';

  @override
  String get statusFailed => 'Fehlgeschlagen';

  @override
  String get viewFullReport => 'Vollständigen Bericht im Browser anzeigen';

  @override
  String get engineFindings => 'Detaillierte Engine-Ergebnisse';

  @override
  String get engineName => 'Engine';

  @override
  String get engineCategory => 'Kategorie';

  @override
  String get engineResult => 'Ergebnis';

  @override
  String get fileSizeExceeded =>
      'Dateigröße überschreitet das Limit des Anbieters';

  @override
  String get shareReport => 'Bericht teilen';

  @override
  String get settingsProviders => 'Sicherheits-Engines';

  @override
  String get settingsPrivacy => 'Datenschutzeinstellungen';

  @override
  String get hashFirstTitle => 'Zuerst-Hash-Modus';

  @override
  String get hashFirstDesc =>
      'Zuerst den Hash prüfen, bevor ein Upload angefordert wird';

  @override
  String get clearHistory => 'Verlauf löschen';

  @override
  String get clearHistoryConfirm =>
      'Möchten Sie den gesamten Scan-Verlauf wirklich löschen?';

  @override
  String get historyCleared => 'Scan-Verlauf erfolgreich gelöscht';

  @override
  String get devSectionTitle => 'Entwicklerinformationen';

  @override
  String get email => 'E-Mail';

  @override
  String get website => 'Webseite';

  @override
  String get copiedToClipboard => 'In die Zwischenablage kopiert';

  @override
  String get copyHash => 'Kopieren';

  @override
  String get themeDarkSubtitle => 'Hintergrund #212327 • Tasten #232627';

  @override
  String get themeLightSubtitle => 'Hintergrund #EFEEF1 • Tasten #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Dem Systemdesign anpassen';
}
