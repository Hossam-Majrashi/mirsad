// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Sigurnosni Skener Datoteka s Više Motora';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad je napredna sigurnosna platforma za skeniranje i analizu datoteka putem paralelnih sigurnosnih motora radi otkrivanja zlonamjernog softvera i prijetnji.';

  @override
  String get splashGetStarted => 'Započni Skeniranje';

  @override
  String get btnNext => 'Dalje';

  @override
  String get btnSkip => 'Preskoči';

  @override
  String get btnBack => 'Nazad';

  @override
  String get btnCancel => 'Otkaži';

  @override
  String get btnConfirm => 'Potvrdi';

  @override
  String get btnDone => 'Završeno';

  @override
  String get btnSave => 'Sačuvaj';

  @override
  String get btnProceed => 'Nastavi';

  @override
  String get btnRescan => 'Ponovo Skeniraj';

  @override
  String get selectLanguage => 'Odaberite Jezik';

  @override
  String get searchLanguage => 'Pretraži jezik...';

  @override
  String get selectTheme => 'Tema i Izgled';

  @override
  String get chooseThemeSubtitle => 'Odaberite željenu temu za ugodno iskustvo';

  @override
  String get themeDark => 'Tamni Režim';

  @override
  String get themeLight => 'Svijetli Režim';

  @override
  String get themeSystem => 'Zadano Sistemom';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Novo Skeniranje';

  @override
  String get settings => 'Postavke';

  @override
  String get scanHistory => 'Historija Skeniranja';

  @override
  String get noScanHistory => 'Nema prethodnih skeniranja';

  @override
  String get noScanHistorySubtitle =>
      'Odaberite datoteku za skeniranje putem naprednih motora';

  @override
  String get selectFile => 'Odaberi Datoteku';

  @override
  String get dragDropFile => 'Prevucite datoteku ovdje ili kliknite za odabir';

  @override
  String get computingHashes =>
      'Izračunavanje kriptografskih hash vrijednosti (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Skeniranje na sigurnosnim motorima...';

  @override
  String get uploadConfirmTitle => 'Potvrda Prijenosa Datoteke';

  @override
  String get uploadConfirmDesc =>
      'Nije pronađen prethodni izvještaj za ovaj hash. Želite li prenijeti datoteku radi dublje analize?';

  @override
  String get hashOnlyMode => 'Samo Pretraga Hashem (Stroga Privatnost)';

  @override
  String get fullUploadMode => 'Prenesi Datoteku i Duboko Skeniraj';

  @override
  String get summaryTitle => 'Sažetak Skeniranja';

  @override
  String get fileName => 'Naziv Datoteke';

  @override
  String get fileSize => 'Veličina Datoteke';

  @override
  String get hashSha256 => 'SHA-256 Hash';

  @override
  String get hashSha1 => 'SHA-1 Hash';

  @override
  String get hashMd5 => 'MD5 Hash';

  @override
  String get aggregatedVerdict => 'Ukupna Presuda';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged od $total pružalaca usluga je označilo ovu datoteku kao prijetnju';
  }

  @override
  String get verdictClean => 'Čisto';

  @override
  String get verdictSuspicious => 'Sumnjivo';

  @override
  String get verdictMalicious => 'Zlonamjerno';

  @override
  String get verdictUnknown => 'Nepoznato';

  @override
  String get verdictError => 'Greška';

  @override
  String get statusQueued => 'Na Čekanju';

  @override
  String get statusScanning => 'Skenira se...';

  @override
  String get statusCompleted => 'Završeno';

  @override
  String get statusFailed => 'Neuspjelo';

  @override
  String get viewFullReport => 'Pogledaj Puni Izvještaj u Pregledniku';

  @override
  String get engineFindings => 'Detalji Nalaza Motora';

  @override
  String get engineName => 'Motor';

  @override
  String get engineCategory => 'Kategorija';

  @override
  String get engineResult => 'Rezultat';

  @override
  String get fileSizeExceeded => 'Veličina datoteke prelazi ograničenje';

  @override
  String get shareReport => 'Podijeli Izvještaj';

  @override
  String get settingsProviders => 'Sigurnosni Motori';

  @override
  String get settingsPrivacy => 'Postavke Privatnosti';

  @override
  String get hashFirstTitle => 'Način Prvo Hash';

  @override
  String get hashFirstDesc =>
      'Provjeri hash prije zahtjeva za prijenos datoteke';

  @override
  String get clearHistory => 'Očisti Historiju';

  @override
  String get clearHistoryConfirm =>
      'Jeste li sigurni da želite obrisati historiju skeniranja?';

  @override
  String get historyCleared => 'Historija skeniranja je uspješno obrisana';

  @override
  String get devSectionTitle => 'Informacije o Razvojnom Programeru';

  @override
  String get email => 'E-pošta';

  @override
  String get website => 'Web Stranica';

  @override
  String get copiedToClipboard => 'Kopirano u međuspremnik';

  @override
  String get copyHash => 'Kopiraj';

  @override
  String get themeDarkSubtitle => 'Pozadina #212327 • Dugmad #232627';

  @override
  String get themeLightSubtitle => 'Pozadina #EFEEF1 • Dugmad #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Usklađeno s izgledom sistema';
}
