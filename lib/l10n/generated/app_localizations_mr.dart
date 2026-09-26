// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'मल्टी-इंजिन फाइल सुरक्षा स्कॅनर';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad हे मालवेअर आणि धोके शोधण्यासाठी एकाधिक समांतर सुरक्षा इंजिनद्वारे फाइल्स तपासणारे एक प्रगत सुरक्षा प्लॅटफॉर्म आहे.';

  @override
  String get splashGetStarted => 'स्कॅन सुरू करा';

  @override
  String get btnNext => 'पुढे';

  @override
  String get btnSkip => 'वगळा';

  @override
  String get btnBack => 'मागे';

  @override
  String get btnCancel => 'रद्द करा';

  @override
  String get btnConfirm => 'निश्चित करा';

  @override
  String get btnDone => 'पूर्ण';

  @override
  String get btnSave => 'जतन करा';

  @override
  String get btnProceed => 'पुढे चला';

  @override
  String get btnRescan => 'पुन्हा स्कॅन करा';

  @override
  String get selectLanguage => 'भाषा निवडा';

  @override
  String get searchLanguage => 'भाषा शोधा...';

  @override
  String get selectTheme => 'थीम आणि स्वरूप';

  @override
  String get chooseThemeSubtitle =>
      'आरामदायी अनुभवासाठी तुमची पसंतीची थीम निवडा';

  @override
  String get themeDark => 'डार्क मोड';

  @override
  String get themeLight => 'लाइट मोड';

  @override
  String get themeSystem => 'सिस्टम डीफॉल्ट';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'नवीन स्कॅन';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get scanHistory => 'स्कॅन इतिहास';

  @override
  String get noScanHistory => 'मागील स्कॅन उपलब्ध नाहीत';

  @override
  String get noScanHistorySubtitle =>
      'सुरक्षा इंजिनसह स्कॅन करण्यासाठी फाइल निवडा';

  @override
  String get selectFile => 'फाइल निवडा';

  @override
  String get dragDropFile =>
      'फाइल येथे ड्रॅग आणि ड्रॉप करा किंवा निवडण्यासाठी क्लिक करा';

  @override
  String get computingHashes => 'क्रिप्टोग्राफिक हॅश मोजत आहे...';

  @override
  String get scanningEngines => 'सुरक्षा इंजिनवर स्कॅन सुरू आहे...';

  @override
  String get uploadConfirmTitle => 'फाइल अपलोड निश्चित करा';

  @override
  String get uploadConfirmDesc =>
      'या फाइल हॅशसाठी कोणताही मागील अहवाल आढळला नाही. सखोल विश्लेषणासाठी फाइल अपलोड करू इच्छिता?';

  @override
  String get hashOnlyMode => 'केवळ हॅश शोध (कडक गोपनीयता मोड)';

  @override
  String get fullUploadMode => 'फाइल अपलोड आणि सखोल स्कॅन';

  @override
  String get summaryTitle => 'स्कॅन सारांश';

  @override
  String get fileName => 'फाइलचे नाव';

  @override
  String get fileSize => 'फाइलचा आकार';

  @override
  String get hashSha256 => 'SHA-256 हॅश';

  @override
  String get hashSha1 => 'SHA-1 हॅश';

  @override
  String get hashMd5 => 'MD5 हॅश';

  @override
  String get aggregatedVerdict => 'एकूण निकाल';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total पैकी $flagged प्रदात्यांनी ही फाइल धोकादायक असल्याचे चिन्हांकित केले';
  }

  @override
  String get verdictClean => 'सुरक्षित';

  @override
  String get verdictSuspicious => 'संशयास्पद';

  @override
  String get verdictMalicious => 'घातक';

  @override
  String get verdictUnknown => 'अज्ञात';

  @override
  String get verdictError => 'त्रुटी';

  @override
  String get statusQueued => 'रांगेत आहे';

  @override
  String get statusScanning => 'स्कॅन होत आहे...';

  @override
  String get statusCompleted => 'पूर्ण झाले';

  @override
  String get statusFailed => 'अयशस्वी';

  @override
  String get viewFullReport => 'ब्राउझरमध्ये संपूर्ण अहवाल पहा';

  @override
  String get engineFindings => 'इंजिन निष्कर्षांचा तपशील';

  @override
  String get engineName => 'इंजिन';

  @override
  String get engineCategory => 'श्रेणी';

  @override
  String get engineResult => 'निकाल';

  @override
  String get fileSizeExceeded => 'फाइल आकार मर्यादेपेक्षा जास्त आहे';

  @override
  String get shareReport => 'अहवाल शेअर करा';

  @override
  String get settingsProviders => 'सुरक्षा प्रदाते';

  @override
  String get settingsPrivacy => 'गोपनीयता सेटिंग्ज';

  @override
  String get hashFirstTitle => 'प्रथम हॅश मोड';

  @override
  String get hashFirstDesc => 'फाइल अपलोड करण्यापूर्वी हॅश तपासा';

  @override
  String get clearHistory => 'इतिहास साफ करा';

  @override
  String get clearHistoryConfirm =>
      'तुम्हाला खात्री आहे की तुम्ही मागील सर्व स्कॅन इतिहास हटवू इच्छिता?';

  @override
  String get historyCleared => 'स्कॅन इतिहास यशस्वीरित्या साफ केला गेला';

  @override
  String get devSectionTitle => 'डेव्हलपर माहिती';

  @override
  String get email => 'ईमेल';

  @override
  String get website => 'वेबसाइट';

  @override
  String get copiedToClipboard => 'क्लिपबोर्डवर कॉपी केले';

  @override
  String get copyHash => 'कॉपी';

  @override
  String get themeDarkSubtitle => 'पार्श्वभूमी #212327 • बटणे #232627';

  @override
  String get themeLightSubtitle => 'पार्श्वभूमी #EFEEF1 • बटणे #FEFEFE';

  @override
  String get themeSystemSubtitle => 'सिस्टमच्या स्वरूपानुसार';
}
