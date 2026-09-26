// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'मल्टी-इन्जिन फाइल सुरक्षा स्क्यानर';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad भाइरस र खतराहरू पत्ता लगाउन धेरै समानान्तर सुरक्षा इन्जिनहरू मार्फत फाइलहरू स्क्यान र विश्लेषण गर्ने एक उन्नत सुरक्षा प्लेटफर्म हो।';

  @override
  String get splashGetStarted => 'स्क्यान सुरु गर्नुहोस्';

  @override
  String get btnNext => 'अर्को';

  @override
  String get btnSkip => 'छोड्नुहोस्';

  @override
  String get btnBack => 'पछाडि';

  @override
  String get btnCancel => 'रद्द गर्नुहोस्';

  @override
  String get btnConfirm => 'पुष्टि गर्नुहोस्';

  @override
  String get btnDone => 'सम्पन्न';

  @override
  String get btnSave => 'बचत गर्नुहोस्';

  @override
  String get btnProceed => 'अगाडि बढ्नुहोस्';

  @override
  String get btnRescan => 'पुनः स्क्यान गर्नुहोस्';

  @override
  String get selectLanguage => 'भाषा छान्नुहोस्';

  @override
  String get searchLanguage => 'भाषा खोज्नुहोस्...';

  @override
  String get selectTheme => 'थिम र स्वरूप';

  @override
  String get chooseThemeSubtitle =>
      'सहज अनुभवको लागि आफ्नो मनपर्ने थिम चयन गर्नुहोस्';

  @override
  String get themeDark => 'डार्क मोड';

  @override
  String get themeLight => 'लाइट मोड';

  @override
  String get themeSystem => 'प्रणाली पूर्वनिर्धारित';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'नयाँ स्क्यान';

  @override
  String get settings => 'सेटिङहरू';

  @override
  String get scanHistory => 'स्क्यान इतिहास';

  @override
  String get noScanHistory => 'कुनै अघिल्लो स्क्यान छैन';

  @override
  String get noScanHistorySubtitle =>
      'सुरक्षा इन्जिनहरूसँग स्क्यान गर्न फाइल चयन गर्नुहोस्';

  @override
  String get selectFile => 'फाइल छान्नुहोस्';

  @override
  String get dragDropFile =>
      'फाइल यहाँ तान्नुहोस् र छोड्नुहोस्, वा ब्राउज गर्न क्लिक गर्नुहोस्';

  @override
  String get computingHashes => 'क्रिप्टोग्राफिक ह्यासहरू गणना गर्दै...';

  @override
  String get scanningEngines => 'सुरक्षा इन्जिनहरूमा स्क्यान गरिँदै...';

  @override
  String get uploadConfirmTitle => 'फाइल अपलोड पुष्टि गर्नुहोस्';

  @override
  String get uploadConfirmDesc =>
      'यो फाइल ह्यासको लागि कुनै अघिल्लो रिपोर्ट फेला परेन। के तपाईं विस्तृत विश्लेषणको लागि फाइल अपलोड गर्न चाहनुहुन्छ?';

  @override
  String get hashOnlyMode => 'ह्यास खोज मात्र (कडा गोपनीयता मोड)';

  @override
  String get fullUploadMode => 'फाइल अपलोड र गहिरो स्क्यान';

  @override
  String get summaryTitle => 'स्क्यान सारांश';

  @override
  String get fileName => 'फाइलको नाम';

  @override
  String get fileSize => 'फाइलको आकार';

  @override
  String get hashSha256 => 'SHA-256 ह्यास';

  @override
  String get hashSha1 => 'SHA-1 ह्यास';

  @override
  String get hashMd5 => 'MD5 ह्यास';

  @override
  String get aggregatedVerdict => 'समग्र निर्णय';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total मध्ये $flagged प्रदायकहरूले यस फाइललाई जोखिमपूर्ण चिन्ह लगाए';
  }

  @override
  String get verdictClean => 'सुरक्षित';

  @override
  String get verdictSuspicious => 'शंकास्पद';

  @override
  String get verdictMalicious => 'हानिकारक';

  @override
  String get verdictUnknown => 'अज्ञात';

  @override
  String get verdictError => 'त्रुटि';

  @override
  String get statusQueued => 'पर्खाइमा छ';

  @override
  String get statusScanning => 'स्क्यान हुँदैछ...';

  @override
  String get statusCompleted => 'सम्पन्न भयो';

  @override
  String get statusFailed => 'असफल भयो';

  @override
  String get viewFullReport => 'ब्राउजरमा पूर्ण रिपोर्ट हेर्नुहोस्';

  @override
  String get engineFindings => 'इन्जिन निष्कर्षहरूको विवरण';

  @override
  String get engineName => 'इन्जिन';

  @override
  String get engineCategory => 'कोटि';

  @override
  String get engineResult => 'नतिजा';

  @override
  String get fileSizeExceeded => 'फाइलको आकार सीमा भन्दा बढी छ';

  @override
  String get shareReport => 'रिपोर्ट सेयर गर्नुहोस्';

  @override
  String get settingsProviders => 'सुरक्षा प्रदायकहरू';

  @override
  String get settingsPrivacy => 'गोपनीयता सेटिङहरू';

  @override
  String get hashFirstTitle => 'पहिले ह्यास मोड';

  @override
  String get hashFirstDesc =>
      'फाइल अपलोड अनुरोध गर्नु अघि ह्यास जाँच गर्नुहोस्';

  @override
  String get clearHistory => 'इतिहास खाली गर्नुहोस्';

  @override
  String get clearHistoryConfirm =>
      'के तपाईं पक्का सबै स्क्यान इतिहास मेटाउन चाहनुहुन्छ?';

  @override
  String get historyCleared => 'स्क्यान इतिहास सफलतापूर्वक मेटाइयो';

  @override
  String get devSectionTitle => 'विकासकर्ता जानकारी';

  @override
  String get email => 'इमेल';

  @override
  String get website => 'वेबसाइट';

  @override
  String get copiedToClipboard => 'क्लिपबोर्डमा प्रतिलिपि गरियो';

  @override
  String get copyHash => 'प्रतिलिपि';

  @override
  String get themeDarkSubtitle => 'पृष्ठभूमि #212327 • बटनहरू #232627';

  @override
  String get themeLightSubtitle => 'पृष्ठभूमि #EFEEF1 • बटनहरू #FEFEFE';

  @override
  String get themeSystemSubtitle => 'प्रणालीको स्वरूप अनुसार';
}
