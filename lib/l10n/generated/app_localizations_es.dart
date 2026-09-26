// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Escáner de Seguridad de Archivos Multi-Motor';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad es una plataforma de seguridad defensiva avanzada para escanear y analizar archivos en múltiples motores paralelos y detectar malware y amenazas.';

  @override
  String get splashGetStarted => 'Iniciar Escaneo';

  @override
  String get btnNext => 'Siguiente';

  @override
  String get btnSkip => 'Omitir';

  @override
  String get btnBack => 'Atrás';

  @override
  String get btnCancel => 'Cancelar';

  @override
  String get btnConfirm => 'Confirmar';

  @override
  String get btnDone => 'Listo';

  @override
  String get btnSave => 'Guardar';

  @override
  String get btnProceed => 'Continuar';

  @override
  String get btnRescan => 'Reescanear';

  @override
  String get selectLanguage => 'Seleccionar Idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

  @override
  String get selectTheme => 'Tema y Apariencia';

  @override
  String get chooseThemeSubtitle =>
      'Elige tu tema preferido para una experiencia cómoda';

  @override
  String get themeDark => 'Modo Oscuro';

  @override
  String get themeLight => 'Modo Claro';

  @override
  String get themeSystem => 'Predeterminado del Sistema';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Nuevo Escaneo';

  @override
  String get settings => 'Ajustes';

  @override
  String get scanHistory => 'Historial de Escaneos';

  @override
  String get noScanHistory => 'No hay escaneos anteriores';

  @override
  String get noScanHistorySubtitle =>
      'Elige un archivo para iniciar el escaneo con motores de seguridad';

  @override
  String get selectFile => 'Elegir Archivo';

  @override
  String get dragDropFile =>
      'Arrastra y suelta un archivo aquí o haz clic para buscar';

  @override
  String get computingHashes =>
      'Calculando hashes criptográficos (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Escaneando en motores de seguridad...';

  @override
  String get uploadConfirmTitle => 'Confirmar Subida de Archivo';

  @override
  String get uploadConfirmDesc =>
      'No se encontró ningún informe previo para el hash de este archivo. ¿Deseas subir el archivo para un análisis profundo?';

  @override
  String get hashOnlyMode => 'Búsqueda Solo por Hash (Privacidad Estricta)';

  @override
  String get fullUploadMode => 'Subir Archivo y Escaneo Profundo';

  @override
  String get summaryTitle => 'Resumen del Escaneo';

  @override
  String get fileName => 'Nombre del Archivo';

  @override
  String get fileSize => 'Tamaño del Archivo';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Veredicto General';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged de $total proveedores marcaron este archivo como peligroso';
  }

  @override
  String get verdictClean => 'Limpio';

  @override
  String get verdictSuspicious => 'Sospechoso';

  @override
  String get verdictMalicious => 'Malicioso';

  @override
  String get verdictUnknown => 'Desconocido';

  @override
  String get verdictError => 'Error';

  @override
  String get statusQueued => 'En Cola';

  @override
  String get statusScanning => 'Escaneando...';

  @override
  String get statusCompleted => 'Completado';

  @override
  String get statusFailed => 'Fallido';

  @override
  String get viewFullReport => 'Ver Informe Completo en el Navegador';

  @override
  String get engineFindings => 'Detalle de Hallazgos de Motores';

  @override
  String get engineName => 'Motor';

  @override
  String get engineCategory => 'Categoría';

  @override
  String get engineResult => 'Resultado';

  @override
  String get fileSizeExceeded =>
      'El tamaño del archivo supera el límite del proveedor';

  @override
  String get shareReport => 'Compartir Informe';

  @override
  String get settingsProviders => 'Motores de Seguridad';

  @override
  String get settingsPrivacy => 'Ajustes de Privacidad';

  @override
  String get hashFirstTitle => 'Modo Hash Primero';

  @override
  String get hashFirstDesc =>
      'Consultar hash antes de solicitar subida de archivo';

  @override
  String get clearHistory => 'Borrar Historial';

  @override
  String get clearHistoryConfirm =>
      '¿Estás seguro de que deseas borrar todo el historial de escaneos?';

  @override
  String get historyCleared => 'Historial de escaneos borrado exitosamente';

  @override
  String get devSectionTitle => 'Información del Desarrollador';

  @override
  String get email => 'Correo electrónico';

  @override
  String get website => 'Sitio Web';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get copyHash => 'Copiar';

  @override
  String get themeDarkSubtitle => 'Fondo #212327 • Botones #232627';

  @override
  String get themeLightSubtitle => 'Fondo #EFEEF1 • Botones #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Adaptar a la apariencia del sistema';
}
