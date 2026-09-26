// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'મલ્ટી-એન્જિન ફાઇલ સુરક્ષા સ્કેનર';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad એ માલવેર અને જોખમોને શોધવા માટે બહુવિધ સમાંતર સુરક્ષા એન્જિનો દ્વારા ફાઇલોનું વિશ્લેષણ કરતું એક અદ્યતન સુરક્ષા પ્લેટફોર્મ છે.';

  @override
  String get splashGetStarted => 'સ્કેન શરૂ કરો';

  @override
  String get btnNext => 'આગળ';

  @override
  String get btnSkip => 'છોડો';

  @override
  String get btnBack => 'પાછળ';

  @override
  String get btnCancel => 'રદ કરો';

  @override
  String get btnConfirm => 'પુષ્ટિ કરો';

  @override
  String get btnDone => 'સંપૂર્ણ';

  @override
  String get btnSave => 'સાચવો';

  @override
  String get btnProceed => 'ચાલુ રાખો';

  @override
  String get btnRescan => 'ફરીથી સ્કેન કરો';

  @override
  String get selectLanguage => 'ભાષા પસંદ કરો';

  @override
  String get searchLanguage => 'ભાષા શોધો...';

  @override
  String get selectTheme => 'થીમ અને દેખાવ';

  @override
  String get chooseThemeSubtitle =>
      'આરામદાયક અનુભવ માટે તમારી મનપસંદ થીમ પસંદ કરો';

  @override
  String get themeDark => 'ડાર્ક મોડ';

  @override
  String get themeLight => 'લાઇટ મોડ';

  @override
  String get themeSystem => 'સિસ્ટમ ડિફૉલ્ટ';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'નવું સ્કેન';

  @override
  String get settings => 'સેટિંગ્સ';

  @override
  String get scanHistory => 'સ્કેન ઇતિહાસ';

  @override
  String get noScanHistory => 'કોઈ અગાઉના સ્કેન નથી';

  @override
  String get noScanHistorySubtitle =>
      'સુરક્ષા એન્જિનો સાથે સ્કેન કરવા માટે એક ફાઇલ પસંદ કરો';

  @override
  String get selectFile => 'ફાઇલ પસંદ કરો';

  @override
  String get dragDropFile =>
      'ફાઇલને અહીં ખેંચો અને મૂકો અથવા બ્રાઉઝ કરવા ક્લિક કરો';

  @override
  String get computingHashes => 'ક્રિપ્ટોગ્રાફિક હેશની ગણતરી થઈ રહી છે...';

  @override
  String get scanningEngines => 'સુરક્ષા એન્જિનોમાં સ્કેન થઈ રહ્યું છે...';

  @override
  String get uploadConfirmTitle => 'ફાઇલ અપલોડની પુષ્ટિ કરો';

  @override
  String get uploadConfirmDesc =>
      'આ ફાઇલ હેશ માટે અગાઉનો કોઈ અહેવાલ મળ્યો નથી. શું તમે ઊંડાણપૂર્વકના વિશ્લેષણ માટે ફાઇલ અપલોડ કરવા માંગો છો?';

  @override
  String get hashOnlyMode => 'માત્ર હેશ શોધ (કડક ગોપનીયતા મોડ)';

  @override
  String get fullUploadMode => 'ફાઇલ અપલોડ અને ઊંડાણપૂર્વક સ્કેન';

  @override
  String get summaryTitle => 'સ્કેન સારાંશ';

  @override
  String get fileName => 'ફાઇલનું નામ';

  @override
  String get fileSize => 'ફાઇલનું કદ';

  @override
  String get hashSha256 => 'SHA-256 હેશ';

  @override
  String get hashSha1 => 'SHA-1 હેશ';

  @override
  String get hashMd5 => 'MD5 હેશ';

  @override
  String get aggregatedVerdict => 'એકંદર ચુકાદો';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total માંથી $flagged પ્રદાતાઓએ આ ફાઇલને જોખમી તરીકે ચિહ્નિત કરી';
  }

  @override
  String get verdictClean => 'સુરક્ષિત';

  @override
  String get verdictSuspicious => 'શંકાસ્પદ';

  @override
  String get verdictMalicious => 'હાનિકારક';

  @override
  String get verdictUnknown => 'અજ્ઞાત';

  @override
  String get verdictError => 'ભૂલ';

  @override
  String get statusQueued => 'કતારમાં છે';

  @override
  String get statusScanning => 'સ્કેનિંગ ચાલુ છે...';

  @override
  String get statusCompleted => 'પૂર્ણ થયું';

  @override
  String get statusFailed => 'નિષ્ફળ થયું';

  @override
  String get viewFullReport => 'બ્રાઉઝરમાં સંપૂર્ણ અહેવાલ જુઓ';

  @override
  String get engineFindings => 'એન્જિન પરિણામોની વિગતો';

  @override
  String get engineName => 'એન્જિન';

  @override
  String get engineCategory => 'શ્રેણી';

  @override
  String get engineResult => 'પરિણામ';

  @override
  String get fileSizeExceeded => 'ફાઇલનું કદ મર્યાદા કરતાં વધી ગયું છે';

  @override
  String get shareReport => 'અહેવાલ શેર કરો';

  @override
  String get settingsProviders => 'સુરક્ષા પ્રદાતાઓ';

  @override
  String get settingsPrivacy => 'ગોપનીયતા સેટિંગ્સ';

  @override
  String get hashFirstTitle => 'પહેલાં હેશ મોડ';

  @override
  String get hashFirstDesc => 'ફાઇલ અપલોડ વિનંતી કરતા પહેલા હેશ તપાસો';

  @override
  String get clearHistory => 'ઇતિહાસ સાફ કરો';

  @override
  String get clearHistoryConfirm =>
      'શું તમે ખરેખર બધો સ્કેન ઇતિહાસ કાઢી નાખવા માંગો છો?';

  @override
  String get historyCleared => 'સ્કેન ઇતિહાસ સફળતાપૂર્વક સાફ થયો';

  @override
  String get devSectionTitle => 'ડેવલપર માહિતી';

  @override
  String get email => 'ઇમેઇલ';

  @override
  String get website => 'વેબસાઇટ';

  @override
  String get copiedToClipboard => 'ક્લિપબોર્ડ પર કૉપિ કર્યું';

  @override
  String get copyHash => 'કૉપિ કરો';

  @override
  String get themeDarkSubtitle => 'પૃષ્ઠભૂમિ #212327 • બટનો #232627';

  @override
  String get themeLightSubtitle => 'પૃષ્ઠભૂમિ #EFEEF1 • બટનો #FEFEFE';

  @override
  String get themeSystemSubtitle => 'સિસ્ટમ અનુસાર';
}
