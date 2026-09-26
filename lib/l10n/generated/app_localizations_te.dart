// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'మల్టీ-ఇంజన్ ఫైల్ భద్రతా స్కానర్';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad అనేది మాల్వేర్ మరియు బెదిరింపులను గుర్తించడానికి బహుళ సమాంతర భద్రతా ఇంజన్ల ద్వారా ఫైళ్ళను విశ్లేషించే అధునాతన భద్రతా వేదిక.';

  @override
  String get splashGetStarted => 'స్కాన్ ప్రారంభించండి';

  @override
  String get btnNext => 'తరువాత';

  @override
  String get btnSkip => 'దాటవేయి';

  @override
  String get btnBack => 'వెనుకకు';

  @override
  String get btnCancel => 'రద్దు చేయి';

  @override
  String get btnConfirm => 'ధృవీకరించు';

  @override
  String get btnDone => 'పూర్తయింది';

  @override
  String get btnSave => 'భద్రపరచు';

  @override
  String get btnProceed => 'కొనసాగించండి';

  @override
  String get btnRescan => 'మళ్ళీ స్కాన్ చేయి';

  @override
  String get selectLanguage => 'భాషను ఎంచుకోండి';

  @override
  String get searchLanguage => 'భాషను శోధించండి...';

  @override
  String get selectTheme => 'థీమ్ మరియు రూపురేఖలు';

  @override
  String get chooseThemeSubtitle =>
      'సౌకర్యవంతమైన అనుభవం కోసం మీ ప్రాధాన్య థీమ్‌ను ఎంచుకోండి';

  @override
  String get themeDark => 'డార్క్ మోడ్';

  @override
  String get themeLight => 'లైట్ మోڈ';

  @override
  String get themeSystem => 'సిస్టమ్ డిఫాల్ట్';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'కొత్త స్కాన్';

  @override
  String get settings => 'సెట్టింగ్‌లు';

  @override
  String get scanHistory => 'స్కాన్ చరిత్ర';

  @override
  String get noScanHistory => 'గత స్కాన్‌లు లేవు';

  @override
  String get noScanHistorySubtitle =>
      'భద్రతా ఇంజన్లతో స్కాన్ చేయడానికి ఒక ఫైల్‌ను ఎంచుకోండి';

  @override
  String get selectFile => 'ఫైల్‌ను ఎంచుకోండి';

  @override
  String get dragDropFile =>
      'ఫైల్‌ను ఇక్కడ లాగి వదలండి, లేదా ఎంచుకోవడానికి క్లిక్ చేయండి';

  @override
  String get computingHashes => 'క్రిప్టోగ్రాఫిక్ హ్యాష్‌లను గణిస్తోంది...';

  @override
  String get scanningEngines => 'భద్రతా ఇంజన్లలో స్కాన్ చేస్తోంది...';

  @override
  String get uploadConfirmTitle => 'ఫైల్ అప్‌లోడ్‌ను ధృవీకరించండి';

  @override
  String get uploadConfirmDesc =>
      'ఈ ఫైల్ హ్యాష్ కోసం మునుపటి నివేదిక ఏదీ కనుగొనబడలేదు. మీరు లోతైన విశ్లేషణ కోసం ఫైల్‌ను అప్‌లోడ్ చేయాలనుకుంటున్నారా?';

  @override
  String get hashOnlyMode => 'హ్యాష్ శోధన మాత్రమే (కఠినమైన గోప్యతా మోడ్)';

  @override
  String get fullUploadMode => 'ఫైల్ అప్‌లోడ్ మరియు లోతైన స్కాన్';

  @override
  String get summaryTitle => 'స్కాన్ సారాంశం';

  @override
  String get fileName => 'ఫైల్ పేరు';

  @override
  String get fileSize => 'ఫైల్ పరిమాణం';

  @override
  String get hashSha256 => 'SHA-256 హ్యాష్';

  @override
  String get hashSha1 => 'SHA-1 హ్యాష్';

  @override
  String get hashMd5 => 'MD5 హ్యాష్';

  @override
  String get aggregatedVerdict => 'మొత్తం తీర్పు';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total లో $flagged ప్రొవైడర్లు ఈ ఫైల్‌ను ప్రమాదకరంగా గుర్తించారు';
  }

  @override
  String get verdictClean => 'సురక్షితం';

  @override
  String get verdictSuspicious => 'అనుమానాస్పదం';

  @override
  String get verdictMalicious => 'హానికరం';

  @override
  String get verdictUnknown => 'తెలియదు';

  @override
  String get verdictError => 'లోపం';

  @override
  String get statusQueued => 'క్యూలో ఉంది';

  @override
  String get statusScanning => 'స్కాన్ చేస్తోంది...';

  @override
  String get statusCompleted => 'పూర్తయింది';

  @override
  String get statusFailed => 'విఫలమైంది';

  @override
  String get viewFullReport => 'బ్రౌజర్‌లో పూర్తి నివేదికను వీక్షించండి';

  @override
  String get engineFindings => 'ఇంజన్ ఫలితాల వివరాలు';

  @override
  String get engineName => 'ఇంజన్';

  @override
  String get engineCategory => 'వర్గం';

  @override
  String get engineResult => 'ఫలితం';

  @override
  String get fileSizeExceeded => 'ఫైల్ పరిమాణం పరిమితిని మించిపోయింది';

  @override
  String get shareReport => 'నివేదికను పంచుకోండి';

  @override
  String get settingsProviders => 'భద్రతా ప్రొవైడర్లు';

  @override
  String get settingsPrivacy => 'గోప్యతా సెట్టింగ్‌లు';

  @override
  String get hashFirstTitle => 'ముందుగా హ్యాష్ మోడ్';

  @override
  String get hashFirstDesc =>
      'అప్‌లోడ్ అభ్యర్థనకు ముందు హ్యాష్‌ను తనిఖీ చేయండి';

  @override
  String get clearHistory => 'చరిత్రను క్లియర్ చేయండి';

  @override
  String get clearHistoryConfirm =>
      'మీరు ఖచ్చితంగా మునుపటి స్కాన్ చరిత్రను తొలగించాలనుకుంటున్నారా?';

  @override
  String get historyCleared => 'స్కాన్ చరిత్ర విజయవంతంగా తొలగించబడింది';

  @override
  String get devSectionTitle => 'డెవలపర్ సమాచారం';

  @override
  String get email => 'ఇమెయిల్';

  @override
  String get website => 'వెబ్‌సైట్';

  @override
  String get copiedToClipboard => 'క్లిప్‌బోర్డ్‌కు కాపీ చేయబడింది';

  @override
  String get copyHash => 'కాపీ';

  @override
  String get themeDarkSubtitle => 'నేపథ్యం #212327 • బటన్లు #232627';

  @override
  String get themeLightSubtitle => 'నేపథ్యం #EFEEF1 • బటన్లు #FEFEFE';

  @override
  String get themeSystemSubtitle => 'సిస్టమ్ రూపాన్ని సరిపోల్చండి';
}
