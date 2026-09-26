// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Verificador de Segurança de Ficheiros Multi-Motor';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'O Mirsad é uma plataforma de segurança defensiva avançada para verificar e analisar ficheiros em múltiplos motores paralelos para detetar malware e ameaças.';

  @override
  String get splashGetStarted => 'Iniciar Verificação';

  @override
  String get btnNext => 'Seguinte';

  @override
  String get btnSkip => 'Ignorar';

  @override
  String get btnBack => 'Voltar';

  @override
  String get btnCancel => 'Cancelar';

  @override
  String get btnConfirm => 'Confirmar';

  @override
  String get btnDone => 'Concluído';

  @override
  String get btnSave => 'Guardar';

  @override
  String get btnProceed => 'Continuar';

  @override
  String get btnRescan => 'Verificar Novamente';

  @override
  String get selectLanguage => 'Selecionar Idioma';

  @override
  String get searchLanguage => 'Procurar idioma...';

  @override
  String get selectTheme => 'Tema e Aspeto';

  @override
  String get chooseThemeSubtitle =>
      'Escolha o seu tema preferido para uma experiência agradável';

  @override
  String get themeDark => 'Modo Escuro';

  @override
  String get themeLight => 'Modo Claro';

  @override
  String get themeSystem => 'Predefinição do Sistema';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Nova Verificação';

  @override
  String get settings => 'Definições';

  @override
  String get scanHistory => 'Histórico de Verificações';

  @override
  String get noScanHistory => 'Sem verificações anteriores';

  @override
  String get noScanHistorySubtitle =>
      'Escolha um ficheiro para iniciar a análise em motores de segurança';

  @override
  String get selectFile => 'Escolher Ficheiro';

  @override
  String get dragDropFile =>
      'Arraste e solte um ficheiro aqui ou clique para procurar';

  @override
  String get computingHashes =>
      'A calcular hashes criptográficos (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'A verificar nos motores de segurança...';

  @override
  String get uploadConfirmTitle => 'Confirmar Envio do Ficheiro';

  @override
  String get uploadConfirmDesc =>
      'Nenhum relatório anterior foi encontrado para este hash. Deseja enviar o ficheiro para uma análise aprofundada?';

  @override
  String get hashOnlyMode => 'Apenas Pesquisa por Hash (Privacidade Rigorosa)';

  @override
  String get fullUploadMode => 'Enviar Ficheiro & Análise Profunda';

  @override
  String get summaryTitle => 'Resumo da Verificação';

  @override
  String get fileName => 'Nome do Ficheiro';

  @override
  String get fileSize => 'Tamanho do Ficheiro';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Veredito Geral';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged de $total fornecedores sinalizaram este ficheiro como perigoso';
  }

  @override
  String get verdictClean => 'Seguro';

  @override
  String get verdictSuspicious => 'Suspeito';

  @override
  String get verdictMalicious => 'Malicioso';

  @override
  String get verdictUnknown => 'Desconhecido';

  @override
  String get verdictError => 'Erro';

  @override
  String get statusQueued => 'Em Fila';

  @override
  String get statusScanning => 'A verificar...';

  @override
  String get statusCompleted => 'Concluído';

  @override
  String get statusFailed => 'Falhou';

  @override
  String get viewFullReport => 'Ver Relatório Completo no Navegador';

  @override
  String get engineFindings => 'Detalhes das Descobertas dos Motores';

  @override
  String get engineName => 'Motor';

  @override
  String get engineCategory => 'Categoria';

  @override
  String get engineResult => 'Resultado';

  @override
  String get fileSizeExceeded =>
      'O tamanho do ficheiro excede o limite permitido';

  @override
  String get shareReport => 'Partilhar Relatório';

  @override
  String get settingsProviders => 'Motores de Segurança';

  @override
  String get settingsPrivacy => 'Definições de Privacidade';

  @override
  String get hashFirstTitle => 'Modo Hash Primeiro';

  @override
  String get hashFirstDesc =>
      'Consultar hash antes de solicitar envio do ficheiro';

  @override
  String get clearHistory => 'Limpar Histórico';

  @override
  String get clearHistoryConfirm =>
      'Tem a certeza de que pretende apagar todo o histórico de verificações?';

  @override
  String get historyCleared => 'Histórico de verificações limpo com sucesso';

  @override
  String get devSectionTitle => 'Informações do Programador';

  @override
  String get email => 'E-mail';

  @override
  String get website => 'Website';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get copyHash => 'Copiar';

  @override
  String get themeDarkSubtitle => 'Fundo #212327 • Botões #232627';

  @override
  String get themeLightSubtitle => 'Fundo #EFEEF1 • Botões #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Combinar com o aspeto do sistema';
}
