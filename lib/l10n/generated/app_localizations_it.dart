// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Scanner di Sicurezza File Multi-Motore';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad è una piattaforma avanzata di sicurezza difensiva per la scansione e l\'analisi di file attraverso molteplici motori paralleli.';

  @override
  String get splashGetStarted => 'Avvia Scansione';

  @override
  String get btnNext => 'Avanti';

  @override
  String get btnSkip => 'Salta';

  @override
  String get btnBack => 'Indietro';

  @override
  String get btnCancel => 'Annulla';

  @override
  String get btnConfirm => 'Conferma';

  @override
  String get btnDone => 'Fatto';

  @override
  String get btnSave => 'Salva';

  @override
  String get btnProceed => 'Procedi';

  @override
  String get btnRescan => 'Riscansiona';

  @override
  String get selectLanguage => 'Seleziona Lingua';

  @override
  String get searchLanguage => 'Cerca lingua...';

  @override
  String get selectTheme => 'Tema e Aspetto';

  @override
  String get chooseThemeSubtitle =>
      'Scegli il tuo tema preferito per un\'esperienza confortevole';

  @override
  String get themeDark => 'Modalità Scura';

  @override
  String get themeLight => 'Modalità Chiara';

  @override
  String get themeSystem => 'Predefinito di Sistema';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Nuova Scansione';

  @override
  String get settings => 'Impostazioni';

  @override
  String get scanHistory => 'Cronologia Scansioni';

  @override
  String get noScanHistory => 'Nessuna scansione precedente';

  @override
  String get noScanHistorySubtitle =>
      'Scegli un file per avviare la scansione sui motori di sicurezza';

  @override
  String get selectFile => 'Scegli File';

  @override
  String get dragDropFile =>
      'Trascina e rilascia un file qui o clicca per sfogliare';

  @override
  String get computingHashes =>
      'Calcolo degli hash crittografici (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Scansione in corso sui motori di sicurezza...';

  @override
  String get uploadConfirmTitle => 'Conferma Caricamento File';

  @override
  String get uploadConfirmDesc =>
      'Nessun rapporto precedente trovato per questo hash. Desideri caricare il file per un\'analisi approfondita?';

  @override
  String get hashOnlyMode => 'Ricerca Solo per Hash (Privacy Rigorosa)';

  @override
  String get fullUploadMode => 'Carica File e Scansione Approfondita';

  @override
  String get summaryTitle => 'Riepilogo Scansione';

  @override
  String get fileName => 'Nome File';

  @override
  String get fileSize => 'Dimensione File';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Verdetto Complessivo';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged su $total motori hanno segnalato questo file';
  }

  @override
  String get verdictClean => 'Sicuro';

  @override
  String get verdictSuspicious => 'Sospetto';

  @override
  String get verdictMalicious => 'Dannoso';

  @override
  String get verdictUnknown => 'Sconosciuto';

  @override
  String get verdictError => 'Errore';

  @override
  String get statusQueued => 'In Coda';

  @override
  String get statusScanning => 'Scansione in corso...';

  @override
  String get statusCompleted => 'Completato';

  @override
  String get statusFailed => 'Non Riuscito';

  @override
  String get viewFullReport => 'Visualizza Rapporto Completo nel Browser';

  @override
  String get engineFindings => 'Dettaglio Risultati dei Motori';

  @override
  String get engineName => 'Motore';

  @override
  String get engineCategory => 'Categoria';

  @override
  String get engineResult => 'Risultato';

  @override
  String get fileSizeExceeded =>
      'La dimensione del file supera il limite consentito';

  @override
  String get shareReport => 'Condividi Rapporto';

  @override
  String get settingsProviders => 'Motori di Sicurezza';

  @override
  String get settingsPrivacy => 'Impostazioni Privacy';

  @override
  String get hashFirstTitle => 'Prima Modalità Hash';

  @override
  String get hashFirstDesc =>
      'Interroga l\'hash prima di richiedere il caricamento del file';

  @override
  String get clearHistory => 'Cancella Cronologia';

  @override
  String get clearHistoryConfirm =>
      'Sei sicuro di voler cancellare tutta la cronologia delle scansioni?';

  @override
  String get historyCleared =>
      'Cronologia delle scansioni cancellata con successo';

  @override
  String get devSectionTitle => 'Informazioni sullo Sviluppatore';

  @override
  String get email => 'E-mail';

  @override
  String get website => 'Sito Web';

  @override
  String get copiedToClipboard => 'Copiato negli appunti';

  @override
  String get copyHash => 'Copia';

  @override
  String get themeDarkSubtitle => 'Sfondo #212327 • Pulsanti #232627';

  @override
  String get themeLightSubtitle => 'Sfondo #EFEEF1 • Pulsanti #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Adatta all\'aspetto del sistema';
}
