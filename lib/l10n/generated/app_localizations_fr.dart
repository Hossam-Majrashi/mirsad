// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Scanner de Sécurité de Fichiers Multi-Moteurs';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad est une plateforme de sécurité défensive avancée pour analyser et scanner des fichiers sur plusieurs moteurs parallèles afin de détecter les logiciels malveillants et les menaces.';

  @override
  String get splashGetStarted => 'Démarrer l\'Analyse';

  @override
  String get btnNext => 'Suivant';

  @override
  String get btnSkip => 'Passer';

  @override
  String get btnBack => 'Retour';

  @override
  String get btnCancel => 'Annuler';

  @override
  String get btnConfirm => 'Confirmer';

  @override
  String get btnDone => 'Terminé';

  @override
  String get btnSave => 'Enregistrer';

  @override
  String get btnProceed => 'Continuer';

  @override
  String get btnRescan => 'Réanalyser';

  @override
  String get selectLanguage => 'Choisir la Langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get selectTheme => 'Thème et Apparence';

  @override
  String get chooseThemeSubtitle =>
      'Choisissez votre thème préféré pour une expérience confortable';

  @override
  String get themeDark => 'Mode Sombre';

  @override
  String get themeLight => 'Mode Clair';

  @override
  String get themeSystem => 'Système par Défaut';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Nouvelle Analyse';

  @override
  String get settings => 'Paramètres';

  @override
  String get scanHistory => 'Historique des Analyses';

  @override
  String get noScanHistory => 'Aucune analyse précédente';

  @override
  String get noScanHistorySubtitle =>
      'Choisissez un fichier pour lancer l\'analyse avec les moteurs de sécurité';

  @override
  String get selectFile => 'Choisir un Fichier';

  @override
  String get dragDropFile =>
      'Glissez-déposez un fichier ici ou cliquez pour parcourir';

  @override
  String get computingHashes =>
      'Calcul des empreintes cryptographiques (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines =>
      'Analyse en cours sur les moteurs de sécurité...';

  @override
  String get uploadConfirmTitle => 'Confirmer le Téléversement du Fichier';

  @override
  String get uploadConfirmDesc =>
      'Aucun rapport antérieur n\'a été trouvé pour le hachage de ce fichier. Souhaitez-vous téléverser le fichier pour une analyse approfondie ?';

  @override
  String get hashOnlyMode =>
      'Recherche par Hachage Seul (Confidentialité Stricte)';

  @override
  String get fullUploadMode => 'Téléverser le Fichier & Analyse Complète';

  @override
  String get summaryTitle => 'Résumé de l\'Analyse';

  @override
  String get fileName => 'Nom du Fichier';

  @override
  String get fileSize => 'Taille du Fichier';

  @override
  String get hashSha256 => 'Hachage SHA-256';

  @override
  String get hashSha1 => 'Hachage SHA-1';

  @override
  String get hashMd5 => 'Hachage MD5';

  @override
  String get aggregatedVerdict => 'Verdict Global';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged sur $total moteurs ont signalé ce fichier';
  }

  @override
  String get verdictClean => 'Sain';

  @override
  String get verdictSuspicious => 'Suspect';

  @override
  String get verdictMalicious => 'Malveillant';

  @override
  String get verdictUnknown => 'Inconnu';

  @override
  String get verdictError => 'Erreur';

  @override
  String get statusQueued => 'En Attente';

  @override
  String get statusScanning => 'Analyse en cours...';

  @override
  String get statusCompleted => 'Terminé';

  @override
  String get statusFailed => 'Échoué';

  @override
  String get viewFullReport => 'Voir le Rapport Complet dans le Navigateur';

  @override
  String get engineFindings => 'Détails des Résultats des Moteurs';

  @override
  String get engineName => 'Moteur';

  @override
  String get engineCategory => 'Catégorie';

  @override
  String get engineResult => 'Résultat';

  @override
  String get fileSizeExceeded =>
      'La taille du fichier dépasse la limite autorisée';

  @override
  String get shareReport => 'Partager le Rapport';

  @override
  String get settingsProviders => 'Moteurs de Sécurité';

  @override
  String get settingsPrivacy => 'Paramètres de Confidentialité';

  @override
  String get hashFirstTitle => 'Mode Hachage d\'Abord';

  @override
  String get hashFirstDesc =>
      'Interroger le hachage avant de demander le téléversement';

  @override
  String get clearHistory => 'Effacer l\'Historique';

  @override
  String get clearHistoryConfirm =>
      'Êtes-vous sûr de vouloir effacer tout l\'historique des analyses ?';

  @override
  String get historyCleared => 'Historique des analyses effacé avec succès';

  @override
  String get devSectionTitle => 'Informations sur le Développeur';

  @override
  String get email => 'E-mail';

  @override
  String get website => 'Site Web';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get copyHash => 'Copier';

  @override
  String get themeDarkSubtitle => 'Arrière-plan #212327 • Boutons #232627';

  @override
  String get themeLightSubtitle => 'Arrière-plan #EFEEF1 • Boutons #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Harmonisé avec le système';
}
