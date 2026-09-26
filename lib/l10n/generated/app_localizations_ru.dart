// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Многодвижковый сканер безопасности файлов';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad — это передовая платформа оборонительной безопасности для сканирования и анализа файлов на нескольких параллельных антивирусных движках.';

  @override
  String get splashGetStarted => 'Начать сканирование';

  @override
  String get btnNext => 'Далее';

  @override
  String get btnSkip => 'Пропустить';

  @override
  String get btnBack => 'Назад';

  @override
  String get btnCancel => 'Отмена';

  @override
  String get btnConfirm => 'Подтвердить';

  @override
  String get btnDone => 'Готово';

  @override
  String get btnSave => 'Сохранить';

  @override
  String get btnProceed => 'Продолжить';

  @override
  String get btnRescan => 'Повторить сканирование';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String get searchLanguage => 'Поиск языка...';

  @override
  String get selectTheme => 'Тема и оформление';

  @override
  String get chooseThemeSubtitle => 'Выберите удобную для вас тему интерфейса';

  @override
  String get themeDark => 'Тёмная тема';

  @override
  String get themeLight => 'Светлая тема';

  @override
  String get themeSystem => 'Системная тема';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Новое сканирование';

  @override
  String get settings => 'Настройки';

  @override
  String get scanHistory => 'История сканирований';

  @override
  String get noScanHistory => 'Нет предыдущих сканирований';

  @override
  String get noScanHistorySubtitle =>
      'Выберите файл для запуска проверки через антивирусные движки';

  @override
  String get selectFile => 'Выбрать файл';

  @override
  String get dragDropFile => 'Перетащите файл сюда или нажмите для выбора';

  @override
  String get computingHashes =>
      'Вычисление криптографических хешей (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Сканирование в антивирусных движках...';

  @override
  String get uploadConfirmTitle => 'Подтверждение загрузки файла';

  @override
  String get uploadConfirmDesc =>
      'Для хеша этого файла отчёт не найден. Загрузить файл на серверы для углублённого анализа?';

  @override
  String get hashOnlyMode =>
      'Только поиск по хешу (Строгая конфиденциальность)';

  @override
  String get fullUploadMode => 'Загрузить файл и выполнить глубокий анализ';

  @override
  String get summaryTitle => 'Итоги сканирования';

  @override
  String get fileName => 'Имя файла';

  @override
  String get fileSize => 'Размер файла';

  @override
  String get hashSha256 => 'Хеш SHA-256';

  @override
  String get hashSha1 => 'Хеш SHA-1';

  @override
  String get hashMd5 => 'Хеш MD5';

  @override
  String get aggregatedVerdict => 'Общий вердикт';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged из $total поставщиков обнаружили угрозу в этом файле';
  }

  @override
  String get verdictClean => 'Безопасен';

  @override
  String get verdictSuspicious => 'Подозрительный';

  @override
  String get verdictMalicious => 'Вредоносный';

  @override
  String get verdictUnknown => 'Неизвестно';

  @override
  String get verdictError => 'Ошибка';

  @override
  String get statusQueued => 'В очереди';

  @override
  String get statusScanning => 'Сканирование...';

  @override
  String get statusCompleted => 'Завершено';

  @override
  String get statusFailed => 'Не удалось';

  @override
  String get viewFullReport => 'Открыть полный отчёт в браузере';

  @override
  String get engineFindings => 'Подробные результаты движков';

  @override
  String get engineName => 'Движок';

  @override
  String get engineCategory => 'Категория';

  @override
  String get engineResult => 'Результат';

  @override
  String get fileSizeExceeded => 'Размер файла превышает лимит провайдера';

  @override
  String get shareReport => 'Поделиться отчётом';

  @override
  String get settingsProviders => 'Антивирусные движки';

  @override
  String get settingsPrivacy => 'Конфиденциальность';

  @override
  String get hashFirstTitle => 'Сначала проверка по хешу';

  @override
  String get hashFirstDesc =>
      'Проверять хеш перед отправкой запроса на загрузку файла';

  @override
  String get clearHistory => 'Очистить историю';

  @override
  String get clearHistoryConfirm =>
      'Вы уверены, что хотите удалить всю историю сканирований?';

  @override
  String get historyCleared => 'История сканирований успешно очищена';

  @override
  String get devSectionTitle => 'Информация о разработчике';

  @override
  String get email => 'Эл. почта';

  @override
  String get website => 'Веб-сайт';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get copyHash => 'Копировать';

  @override
  String get themeDarkSubtitle => 'Фон #212327 • Кнопки #232627';

  @override
  String get themeLightSubtitle => 'Фон #EFEEF1 • Кнопки #FEFEFE';

  @override
  String get themeSystemSubtitle => 'В соответствии с темой системы';
}
