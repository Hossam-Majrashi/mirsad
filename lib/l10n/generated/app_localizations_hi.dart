// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'मल्टी-इंजन फ़ाइल सुरक्षा स्कैनर';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad एक उन्नत सुरक्षा प्लेटफ़ॉर्म है जो मैलवेयर और खतरों का पता लगाने के लिए कई समानांतर इंजनों के माध्यम से फ़ाइलों को स्कैन और विश्लेषित करता है।';

  @override
  String get splashGetStarted => 'स्कैन शुरू करें';

  @override
  String get btnNext => 'आगे';

  @override
  String get btnSkip => 'छोड़ें';

  @override
  String get btnBack => 'पीछे';

  @override
  String get btnCancel => 'रद्द करें';

  @override
  String get btnConfirm => 'पुष्टि करें';

  @override
  String get btnDone => 'पूर्ण';

  @override
  String get btnSave => 'सहेजें';

  @override
  String get btnProceed => 'आगे बढ़ें';

  @override
  String get btnRescan => 'पुनः स्कैन करें';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get searchLanguage => 'भाषा खोजें...';

  @override
  String get selectTheme => 'थीम और स्वरूप';

  @override
  String get chooseThemeSubtitle =>
      'आरामदायक अनुभव के लिए अपनी पसंदीदा थीम चुनें';

  @override
  String get themeDark => 'डार्क मोड';

  @override
  String get themeLight => 'लाइट मोड';

  @override
  String get themeSystem => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'नया स्कैन';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get scanHistory => 'स्कैन इतिहास';

  @override
  String get noScanHistory => 'कोई पिछला स्कैन नहीं है';

  @override
  String get noScanHistorySubtitle =>
      'उन्नत सुरक्षा इंजनों के साथ स्कैन करने के लिए एक फ़ाइल चुनें';

  @override
  String get selectFile => 'फ़ाइल चुनें';

  @override
  String get dragDropFile =>
      'फ़ाइल को यहाँ खींचें और छोड़ें, या ब्राउज़ करने के लिए क्लिक करें';

  @override
  String get computingHashes => 'क्रिप्टोग्राफ़िक हैश की गणना की जा रही है...';

  @override
  String get scanningEngines => 'सुरक्षा इंजनों में स्कैन किया जा रहा है...';

  @override
  String get uploadConfirmTitle => 'फ़ाइल अपलोड की पुष्टि करें';

  @override
  String get uploadConfirmDesc =>
      'इस फ़ाइल हैश के लिए कोई पिछली रिपोर्ट नहीं मिली। क्या आप गहरे विश्लेषण के लिए फ़ाइल अपलोड करना चाहते हैं?';

  @override
  String get hashOnlyMode => 'केवल हैश खोज (सख्त गोपनीयता मोड)';

  @override
  String get fullUploadMode => 'फ़ाइल अपलोड और गहरा स्कैन';

  @override
  String get summaryTitle => 'स्कैन सारांश';

  @override
  String get fileName => 'फ़ाइल का नाम';

  @override
  String get fileSize => 'फ़ाइल का आकार';

  @override
  String get hashSha256 => 'SHA-256 हैश';

  @override
  String get hashSha1 => 'SHA-1 हैश';

  @override
  String get hashMd5 => 'MD5 हैश';

  @override
  String get aggregatedVerdict => 'समग्र निर्णय';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total में से $flagged प्रदाताओं ने इस फ़ाइल को संदिग्ध चिह्नित किया';
  }

  @override
  String get verdictClean => 'सुरक्षित';

  @override
  String get verdictSuspicious => 'संदिग्ध';

  @override
  String get verdictMalicious => 'हानिकारक';

  @override
  String get verdictUnknown => 'अज्ञात';

  @override
  String get verdictError => 'त्रुटि';

  @override
  String get statusQueued => 'कतार में';

  @override
  String get statusScanning => 'स्कैनिंग जारी है...';

  @override
  String get statusCompleted => 'पूर्ण हुआ';

  @override
  String get statusFailed => 'विफल रहा';

  @override
  String get viewFullReport => 'ब्राउज़र में पूरी रिपोर्ट देखें';

  @override
  String get engineFindings => 'इंजन निष्कर्ष विवरण';

  @override
  String get engineName => 'इंजन';

  @override
  String get engineCategory => 'श्रेणी';

  @override
  String get engineResult => 'परिणाम';

  @override
  String get fileSizeExceeded => 'फ़ाइल का आकार सीमा से अधिक है';

  @override
  String get shareReport => 'रिपोर्ट साझा करें';

  @override
  String get settingsProviders => 'सुरक्षा प्रदाता';

  @override
  String get settingsPrivacy => 'गोपनीयता सेटिंग्स';

  @override
  String get hashFirstTitle => 'पहले हैश मोड';

  @override
  String get hashFirstDesc =>
      'फ़ाइल अपलोड का अनुरोध करने से पहले हैश की जाँच करें';

  @override
  String get clearHistory => 'इतिहास साफ़ करें';

  @override
  String get clearHistoryConfirm =>
      'क्या आप वाकई सारा पिछला स्कैन इतिहास हटाना चाहते हैं?';

  @override
  String get historyCleared => 'स्कैन इतिहास सफलतापूर्वक साफ़ हो गया';

  @override
  String get devSectionTitle => 'डेवलपर जानकारी';

  @override
  String get email => 'ईमेल';

  @override
  String get website => 'वेबसाइट';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get copyHash => 'कॉपी';

  @override
  String get themeDarkSubtitle => 'पृष्ठभूमि #212327 • बटन #232627';

  @override
  String get themeLightSubtitle => 'पृष्ठभूमि #EFEEF1 • बटन #FEFEFE';

  @override
  String get themeSystemSubtitle => 'सिस्टम स्वरूप के अनुसार';
}
