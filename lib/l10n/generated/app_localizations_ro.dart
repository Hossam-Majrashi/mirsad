// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Scaner de Securitate a Fișierelor Multi-Motor';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad este o platformă avansată de securitate defensivă pentru scanarea și analizarea fișierelor prin mai multe motoare paralele.';

  @override
  String get splashGetStarted => 'Începe Scanarea';

  @override
  String get btnNext => 'Următorul';

  @override
  String get btnSkip => 'Omite';

  @override
  String get btnBack => 'Înapoi';

  @override
  String get btnCancel => 'Anulează';

  @override
  String get btnConfirm => 'Confirmă';

  @override
  String get btnDone => 'Gata';

  @override
  String get btnSave => 'Salvează';

  @override
  String get btnProceed => 'Continuă';

  @override
  String get btnRescan => 'Rescanează';

  @override
  String get selectLanguage => 'Selectați Limba';

  @override
  String get searchLanguage => 'Căutați limba...';

  @override
  String get selectTheme => 'Temă și Aspect';

  @override
  String get chooseThemeSubtitle =>
      'Alegeți tema preferată pentru o experiență confortabilă';

  @override
  String get themeDark => 'Mod Întunecat';

  @override
  String get themeLight => 'Mod Luminos';

  @override
  String get themeSystem => 'Implicit de Sistem';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Scanare Nouă';

  @override
  String get settings => 'Setări';

  @override
  String get scanHistory => 'Istoric Scanări';

  @override
  String get noScanHistory => 'Nu există scanări anterioare';

  @override
  String get noScanHistorySubtitle =>
      'Alegeți un fișier pentru a începe scanarea cu motoarele de securitate';

  @override
  String get selectFile => 'Alege Fișierul';

  @override
  String get dragDropFile =>
      'Trageți și plasați un fișier aici sau faceți clic pentru a căuta';

  @override
  String get computingHashes =>
      'Se calculează hash-urile criptografice (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Se scanează pe motoarele de securitate...';

  @override
  String get uploadConfirmTitle => 'Confirmați Încărcarea Fișierului';

  @override
  String get uploadConfirmDesc =>
      'Nu s-a găsit niciun raport anterior pentru acest hash. Doriți să încărcați fișierul pentru o analiză detaliată?';

  @override
  String get hashOnlyMode =>
      'Doar Căutare după Hash (Confidențialitate Strictă)';

  @override
  String get fullUploadMode => 'Încărcare Fișier & Scanare Aprofundată';

  @override
  String get summaryTitle => 'Rezumatul Scanării';

  @override
  String get fileName => 'Nume Fișier';

  @override
  String get fileSize => 'Dimensiune Fișier';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Verdict General';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged din $total furnizori au marcat acest fișier ca periculos';
  }

  @override
  String get verdictClean => 'Curat';

  @override
  String get verdictSuspicious => 'Suspect';

  @override
  String get verdictMalicious => 'Malițios';

  @override
  String get verdictUnknown => 'Necunoscut';

  @override
  String get verdictError => 'Eroare';

  @override
  String get statusQueued => 'În Coadă';

  @override
  String get statusScanning => 'Se scanează...';

  @override
  String get statusCompleted => 'Finalizat';

  @override
  String get statusFailed => 'Eșuat';

  @override
  String get viewFullReport => 'Vizualizați Raportul Complet în Browser';

  @override
  String get engineFindings => 'Detalii Constatări Motoare';

  @override
  String get engineName => 'Motor';

  @override
  String get engineCategory => 'Categorie';

  @override
  String get engineResult => 'Rezultat';

  @override
  String get fileSizeExceeded =>
      'Dimensiunea fișierului depășește limita admisă';

  @override
  String get shareReport => 'Distribuie Raportul';

  @override
  String get settingsProviders => 'Motoare de Securitate';

  @override
  String get settingsPrivacy => 'Setări de Confidențialitate';

  @override
  String get hashFirstTitle => 'Modul Hash Mai Întâi';

  @override
  String get hashFirstDesc =>
      'Interogați hash-ul înainte de a solicita încărcarea fișierului';

  @override
  String get clearHistory => 'Șterge Istoricul';

  @override
  String get clearHistoryConfirm =>
      'Sigur doriți să ștergeți tot istoricul scanărilor?';

  @override
  String get historyCleared => 'Istoricul scanărilor a fost șters cu succes';

  @override
  String get devSectionTitle => 'Informații Dezvoltator';

  @override
  String get email => 'E-mail';

  @override
  String get website => 'Site Web';

  @override
  String get copiedToClipboard => 'Copiat în clipboard';

  @override
  String get copyHash => 'Copiază';

  @override
  String get themeDarkSubtitle => 'Fundal #212327 • Butoane #232627';

  @override
  String get themeLightSubtitle => 'Fundal #EFEEF1 • Butoane #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Conform aspectului sistemului';
}
