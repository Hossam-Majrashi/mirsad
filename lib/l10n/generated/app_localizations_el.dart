// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Πολυκινητήριος Σαρωτής Ασφάλειας Αρχείων';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Το Mirsad είναι μια προηγμένη αμυντική πλατφόρμα ασφάλειας για τη σάρωση και ανάλυση αρχείων μέσω πολλαπλών παράλληλων μηχανών ασφαλείας.';

  @override
  String get splashGetStarted => 'Έναρξη Σάρωσης';

  @override
  String get btnNext => 'Επόμενο';

  @override
  String get btnSkip => 'Παράλειψη';

  @override
  String get btnBack => 'Πίσω';

  @override
  String get btnCancel => 'Ακύρωση';

  @override
  String get btnConfirm => 'Επιβεβαίωση';

  @override
  String get btnDone => 'Τέλος';

  @override
  String get btnSave => 'Αποθήκευση';

  @override
  String get btnProceed => 'Συνέχεια';

  @override
  String get btnRescan => 'Επανασάρωση';

  @override
  String get selectLanguage => 'Επιλογή Γλώσσας';

  @override
  String get searchLanguage => 'Αναζήτηση γλώσσας...';

  @override
  String get selectTheme => 'Θέμα και Εμφάνιση';

  @override
  String get chooseThemeSubtitle =>
      'Επιλέξτε το θέμα που προτιμάτε για μια άνετη εμπειρία';

  @override
  String get themeDark => 'Σκοτεινή Λειτουργία';

  @override
  String get themeLight => 'Φωτεινή Λειτουργία';

  @override
  String get themeSystem => 'Προεπιλογή Συστήματος';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Νέα Σάρωση';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get scanHistory => 'Ιστορικό Σαρώσεων';

  @override
  String get noScanHistory => 'Δεν υπάρχουν προηγούμενες σαρώσεις';

  @override
  String get noScanHistorySubtitle =>
      'Επιλέξτε ένα αρχείο για σάρωση με μηχανές ασφαλείας';

  @override
  String get selectFile => 'Επιλογή Αρχείου';

  @override
  String get dragDropFile =>
      'Σύρετε και αποθέστε ένα αρχείο εδώ ή κάντε κλικ για περιήγηση';

  @override
  String get computingHashes =>
      'Υπολογισμός κρυπτογραφικών κατακερματισμών (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Σάρωση σε μηχανές ασφαλείας...';

  @override
  String get uploadConfirmTitle => 'Επιβεβαίωση Μεταφόρτωσης Αρχείου';

  @override
  String get uploadConfirmDesc =>
      'Δεν βρέθηκε προηγούμενη αναφορά για αυτό το hash. Θέλετε να μεταφορτώσετε το αρχείο για λεπτομερή ανάλυση;';

  @override
  String get hashOnlyMode => 'Αναζήτηση μόνο με Hash (Αυστηρή Ιδιωτικότητα)';

  @override
  String get fullUploadMode => 'Μεταφόρτωση Αρχείου & Βαθιά Σάρωση';

  @override
  String get summaryTitle => 'Σύνοψη Σάρωσης';

  @override
  String get fileName => 'Όνομα Αρχείου';

  @override
  String get fileSize => 'Μέγεθος Αρχείου';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Συνολική Ετυμηγορία';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged από $total παρόχους επισήμαναν αυτό το αρχείο ως απειλή';
  }

  @override
  String get verdictClean => 'Καθαρό';

  @override
  String get verdictSuspicious => 'Ύποπτο';

  @override
  String get verdictMalicious => 'Κακόβουλο';

  @override
  String get verdictUnknown => 'Άγνωστο';

  @override
  String get verdictError => 'Σφάλμα';

  @override
  String get statusQueued => 'Σε Ουρά';

  @override
  String get statusScanning => 'Σάρωση...';

  @override
  String get statusCompleted => 'Ολοκληρώθηκε';

  @override
  String get statusFailed => 'Απέτυχε';

  @override
  String get viewFullReport =>
      'Προβολή Πλήρους Αναφοράς στο Πρόγραμμα Περιήγησης';

  @override
  String get engineFindings => 'Λεπτομέρειες Ευρημάτων Μηχανών';

  @override
  String get engineName => 'Μηχανή';

  @override
  String get engineCategory => 'Κατηγορία';

  @override
  String get engineResult => 'Αποτέλεσμα';

  @override
  String get fileSizeExceeded => 'Το μέγεθος του αρχείου υπερβαίνει το όριο';

  @override
  String get shareReport => 'Κοινοποίηση Αναφοράς';

  @override
  String get settingsProviders => 'Μηχανές Ασφαλείας';

  @override
  String get settingsPrivacy => 'Ρυθμίσεις Απορρήτου';

  @override
  String get hashFirstTitle => 'Λειτουργία Πρώτα Hash';

  @override
  String get hashFirstDesc =>
      'Έλεγχος του hash πριν ζητηθεί μεταφόρτωση αρχείου';

  @override
  String get clearHistory => 'Εκκαθάριση Ιστορικού';

  @override
  String get clearHistoryConfirm =>
      'Είστε βέβαιοι ότι θέλετε να διαγράψετε όλο το ιστορικό σαρώσεων;';

  @override
  String get historyCleared => 'Το ιστορικό σαρώσεων εκκαθαρίστηκε επιτυχώς';

  @override
  String get devSectionTitle => 'Πληροφορίες Προγραμματιστή';

  @override
  String get email => 'Email';

  @override
  String get website => 'Ιστότοπος';

  @override
  String get copiedToClipboard => 'Αντιγράφηκε στο πρόχειρο';

  @override
  String get copyHash => 'Αντιγραφή';

  @override
  String get themeDarkSubtitle => 'Φόντο #212327 • Κουμπιά #232627';

  @override
  String get themeLightSubtitle => 'Φόντο #EFEEF1 • Κουμπιά #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Σύμφωνα με την εμφάνιση του συστήματος';
}
