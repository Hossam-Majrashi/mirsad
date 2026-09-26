// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Wielosilnikowy Skaner Bezpieczeństwa Plików';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad to zaawansowana platforma bezpieczeństwa do skanowania i analizowania plików przy użyciu wielu równoległych silników antywirusowych.';

  @override
  String get splashGetStarted => 'Rozpocznij Skanowanie';

  @override
  String get btnNext => 'Dalej';

  @override
  String get btnSkip => 'Pomiń';

  @override
  String get btnBack => 'Wstecz';

  @override
  String get btnCancel => 'Anuluj';

  @override
  String get btnConfirm => 'Potwierdź';

  @override
  String get btnDone => 'Gotowe';

  @override
  String get btnSave => 'Zapisz';

  @override
  String get btnProceed => 'Kontynuuj';

  @override
  String get btnRescan => 'Skanuj Ponownie';

  @override
  String get selectLanguage => 'Wybierz Język';

  @override
  String get searchLanguage => 'Szukaj języka...';

  @override
  String get selectTheme => 'Motyw i Wygląd';

  @override
  String get chooseThemeSubtitle =>
      'Wybierz preferowany motyw, aby zapewnić sobie komfortową pracę';

  @override
  String get themeDark => 'Tryb Ciemny';

  @override
  String get themeLight => 'Tryb Jasny';

  @override
  String get themeSystem => 'Domyślny Systemu';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Nowe Skanowanie';

  @override
  String get settings => 'Ustawienia';

  @override
  String get scanHistory => 'Historia Skanowania';

  @override
  String get noScanHistory => 'Brak wcześniejszych skanowań';

  @override
  String get noScanHistorySubtitle =>
      'Wybierz plik, aby rozpocząć sprawdzanie silnikami bezpieczeństwa';

  @override
  String get selectFile => 'Wybierz Plik';

  @override
  String get dragDropFile =>
      'Przeciągnij i upuść plik tutaj lub kliknij, aby wybrać';

  @override
  String get computingHashes =>
      'Obliczanie skrótów kryptograficznych (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Skanowanie w silnikach bezpieczeństwa...';

  @override
  String get uploadConfirmTitle => 'Potwierdź Przesłanie Pliku';

  @override
  String get uploadConfirmDesc =>
      'Nie znaleziono wcześniejszego raportu dla tego skrótu. Czy chcesz przesłać plik do dogłębnej analizy?';

  @override
  String get hashOnlyMode => 'Tylko Wyszukiwanie Skrótu (Ścisła Prywatność)';

  @override
  String get fullUploadMode => 'Prześlij Plik i Wykonaj Pełne Skanowanie';

  @override
  String get summaryTitle => 'Podsumowanie Skanowania';

  @override
  String get fileName => 'Nazwa Pliku';

  @override
  String get fileSize => 'Rozmiar Pliku';

  @override
  String get hashSha256 => 'Skrót SHA-256';

  @override
  String get hashSha1 => 'Skrót SHA-1';

  @override
  String get hashMd5 => 'Skrót MD5';

  @override
  String get aggregatedVerdict => 'Ogólny Werdykt';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged z $total dostawców uznało ten plik za niebezpieczny';
  }

  @override
  String get verdictClean => 'Czysty';

  @override
  String get verdictSuspicious => 'Podejrzany';

  @override
  String get verdictMalicious => 'Złośliwy';

  @override
  String get verdictUnknown => 'Nieznany';

  @override
  String get verdictError => 'Błąd';

  @override
  String get statusQueued => 'W Kolejce';

  @override
  String get statusScanning => 'Skanowanie...';

  @override
  String get statusCompleted => 'Ukończono';

  @override
  String get statusFailed => 'Niepowodzenie';

  @override
  String get viewFullReport => 'Zobacz Pełny Raport w Przeglądarce';

  @override
  String get engineFindings => 'Szczegółowe Wyniki Silników';

  @override
  String get engineName => 'Silnik';

  @override
  String get engineCategory => 'Kategoria';

  @override
  String get engineResult => 'Wynik';

  @override
  String get fileSizeExceeded => 'Rozmiar pliku przekracza limit dostawcy';

  @override
  String get shareReport => 'Udostępnij Raport';

  @override
  String get settingsProviders => 'Silniki Bezpieczeństwa';

  @override
  String get settingsPrivacy => 'Ustawienia Prywatności';

  @override
  String get hashFirstTitle => 'Tryb Najpierw Skrót';

  @override
  String get hashFirstDesc =>
      'Sprawdź skrót przed wysłaniem prośby o przesłanie pliku';

  @override
  String get clearHistory => 'Wyczyść Historię';

  @override
  String get clearHistoryConfirm =>
      'Czy na pewno chcesz usunąć całą historię skanowania?';

  @override
  String get historyCleared =>
      'Historia skanowania została pomyślnie wyczyszczona';

  @override
  String get devSectionTitle => 'Informacje o Twórcy';

  @override
  String get email => 'E-mail';

  @override
  String get website => 'Strona WWW';

  @override
  String get copiedToClipboard => 'Skopiowano do schowka';

  @override
  String get copyHash => 'Kopiuj';

  @override
  String get themeDarkSubtitle => 'Tło #212327 • Przyciski #232627';

  @override
  String get themeLightSubtitle => 'Tło #EFEEF1 • Przyciski #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Dopasuj do wyglądu systemu';
}
