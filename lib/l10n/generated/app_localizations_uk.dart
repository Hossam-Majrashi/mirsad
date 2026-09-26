// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Багаторушійний сканер безпеки файлів';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad — це передова оборонна платформа безпеки для сканування та аналізу файлів за допомогою кількох паралельних антивірусних рушіїв.';

  @override
  String get splashGetStarted => 'Почати сканування';

  @override
  String get btnNext => 'Далі';

  @override
  String get btnSkip => 'Пропустити';

  @override
  String get btnBack => 'Назад';

  @override
  String get btnCancel => 'Скасувати';

  @override
  String get btnConfirm => 'Підтвердити';

  @override
  String get btnDone => 'Готово';

  @override
  String get btnSave => 'Зберегти';

  @override
  String get btnProceed => 'Продовжити';

  @override
  String get btnRescan => 'Сканувати знову';

  @override
  String get selectLanguage => 'Виберіть мову';

  @override
  String get searchLanguage => 'Пошук мови...';

  @override
  String get selectTheme => 'Тема та вигляд';

  @override
  String get chooseThemeSubtitle =>
      'Виберіть зручну тему для комфортної роботи';

  @override
  String get themeDark => 'Темний режим';

  @override
  String get themeLight => 'Світлий режим';

  @override
  String get themeSystem => 'Системна за замовчуванням';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Нове сканування';

  @override
  String get settings => 'Налаштування';

  @override
  String get scanHistory => 'Історія сканувань';

  @override
  String get noScanHistory => 'Немає попередніх сканувань';

  @override
  String get noScanHistorySubtitle =>
      'Виберіть файл для запуску перевірки рушіями безпеки';

  @override
  String get selectFile => 'Вибрати файл';

  @override
  String get dragDropFile => 'Перетягніть файл сюди або натисніть для вибору';

  @override
  String get computingHashes =>
      'Обчислення криптографічних хешів (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Сканування на антивірусних рушіях...';

  @override
  String get uploadConfirmTitle => 'Підтвердження завантаження файлу';

  @override
  String get uploadConfirmDesc =>
      'Попередніх звітів для хешу цього файлу не знайдено. Бажаєте завантажити файл для глибокого аналізу?';

  @override
  String get hashOnlyMode => 'Лише пошук за хешем (Сувора конфіденційність)';

  @override
  String get fullUploadMode =>
      'Завантажити файл та виконати глибоке сканування';

  @override
  String get summaryTitle => 'Підсумок сканування';

  @override
  String get fileName => 'Назва файлу';

  @override
  String get fileSize => 'Розмір файлу';

  @override
  String get hashSha256 => 'Хеш SHA-256';

  @override
  String get hashSha1 => 'Хеш SHA-1';

  @override
  String get hashMd5 => 'Хеш MD5';

  @override
  String get aggregatedVerdict => 'Загальний вердикт';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged з $total постачальників позначили цей файл як загрозу';
  }

  @override
  String get verdictClean => 'Безпечний';

  @override
  String get verdictSuspicious => 'Підозрілий';

  @override
  String get verdictMalicious => 'Шкідливий';

  @override
  String get verdictUnknown => 'Невідомо';

  @override
  String get verdictError => 'Помилка';

  @override
  String get statusQueued => 'У черзі';

  @override
  String get statusScanning => 'Сканування...';

  @override
  String get statusCompleted => 'Завершено';

  @override
  String get statusFailed => 'Не вдалося';

  @override
  String get viewFullReport => 'Переглянути повний звіт у браузері';

  @override
  String get engineFindings => 'Деталі результатів рушіїв';

  @override
  String get engineName => 'Рушій';

  @override
  String get engineCategory => 'Категорія';

  @override
  String get engineResult => 'Результат';

  @override
  String get fileSizeExceeded => 'Розмір файлу перевищує ліміт постачальника';

  @override
  String get shareReport => 'Поділитися звітом';

  @override
  String get settingsProviders => 'Рушії безпеки';

  @override
  String get settingsPrivacy => 'Налаштування конфіденційності';

  @override
  String get hashFirstTitle => 'Спочатку перевірка за хешем';

  @override
  String get hashFirstDesc =>
      'Перевіряти хеш перед запитом на завантаження файлу';

  @override
  String get clearHistory => 'Очистити історію';

  @override
  String get clearHistoryConfirm =>
      'Ви дійсно бажаєте видалити всю історію сканувань?';

  @override
  String get historyCleared => 'Історію сканувань успішно очищено';

  @override
  String get devSectionTitle => 'Інформація про розробника';

  @override
  String get email => 'Ел. пошта';

  @override
  String get website => 'Вебсайт';

  @override
  String get copiedToClipboard => 'Скопійовано в буфер обміну';

  @override
  String get copyHash => 'Копіювати';

  @override
  String get themeDarkSubtitle => 'Фон #212327 • Кнопки #232627';

  @override
  String get themeLightSubtitle => 'Фон #EFEEF1 • Кнопки #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Відповідно до вигляду системи';
}
