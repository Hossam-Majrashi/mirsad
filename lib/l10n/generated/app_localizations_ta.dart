// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'மல்டி-இன்ஜின் கோப்பு பாதுகாப்பு ஸ்கேனர்';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad என்பது அச்சுறுத்தல்களைக் கண்டறிய பல இணையான பாதுகாப்பு இன்ஜின்கள் மூலம் கோப்புகளை ஆய்வு செய்யும் ஒரு மேம்பட்ட பாதுகாப்பு தளமாகும்.';

  @override
  String get splashGetStarted => 'ஸ்கேன் தொடங்கவும்';

  @override
  String get btnNext => 'அடுத்து';

  @override
  String get btnSkip => 'தவிர்';

  @override
  String get btnBack => 'பின்செல்';

  @override
  String get btnCancel => 'ரத்து செய்';

  @override
  String get btnConfirm => 'உறுதிப்படுத்து';

  @override
  String get btnDone => 'முடிந்தது';

  @override
  String get btnSave => 'சேமி';

  @override
  String get btnProceed => 'தொடரவும்';

  @override
  String get btnRescan => 'மீண்டும் ஸ்கேன் செய்';

  @override
  String get selectLanguage => 'மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get searchLanguage => 'மொழியைத் தேடுங்கள்...';

  @override
  String get selectTheme => 'தீம் மற்றும் தோற்றம்';

  @override
  String get chooseThemeSubtitle =>
      'வசதியான பயன்பாட்டுக்கு உங்கள் விருப்பமான தீமைத் தேர்ந்தெடுக்கவும்';

  @override
  String get themeDark => 'இருண்ட பயன்முறை';

  @override
  String get themeLight => 'வெளிச்ச பயன்முறை';

  @override
  String get themeSystem => 'கணினி இயல்புநிலை';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'புதிய ஸ்கேன்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get scanHistory => 'ஸ்கேன் வரலாறு';

  @override
  String get noScanHistory => 'முந்தைய ஸ்கேன்கள் எதுவும் இல்லை';

  @override
  String get noScanHistorySubtitle =>
      'பாதுகாப்பு இன்ஜின்கள் மூலம் ஸ்கேன் செய்ய ஒரு கோப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get selectFile => 'கோப்பைத் தேர்ந்தெடு';

  @override
  String get dragDropFile =>
      'கோப்பை இங்கே இழுத்து விடவும், அல்லது தேர்ந்தெடுக்க கிளிக் செய்யவும்';

  @override
  String get computingHashes =>
      'கிரிப்டோகிராஃபிக் ஹாஷ்கள் கணக்கிடப்படுகின்றன...';

  @override
  String get scanningEngines =>
      'பாதுகாப்பு இன்ஜின்களில் ஸ்கேன் செய்யப்படுகிறது...';

  @override
  String get uploadConfirmTitle => 'கோப்பு பதிவேற்றத்தை உறுதிப்படுத்தவும்';

  @override
  String get uploadConfirmDesc =>
      'இந்தக் கோப்பின் ஹாஷிற்கு முந்தைய அறிக்கை எதுவும் கிடைக்கவில்லை. முழுமையான ஆய்வுக்குக் கோப்பைப் பதிவேற்ற விரும்புகிறீர்களா?';

  @override
  String get hashOnlyMode => 'ஹாஷ் தேடல் மட்டும் (கடுமையான தனியுரிமை முறை)';

  @override
  String get fullUploadMode => 'கோப்பு பதிவேற்றம் மற்றும் ஆழ்ந்த ஸ்கேன்';

  @override
  String get summaryTitle => 'ஸ்கேன் சுருக்கம்';

  @override
  String get fileName => 'கோப்பின் பெயர்';

  @override
  String get fileSize => 'கோப்பின் அளவு';

  @override
  String get hashSha256 => 'SHA-256 ஹாஷ்';

  @override
  String get hashSha1 => 'SHA-1 ஹாஷ்';

  @override
  String get hashMd5 => 'MD5 ஹாஷ்';

  @override
  String get aggregatedVerdict => 'ஒட்டுமொத்த முடிவு';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total இல் $flagged வழங்குநர்கள் இந்தக் கோப்பை ஆபத்தானது எனக் குறித்துள்ளனர்';
  }

  @override
  String get verdictClean => 'பாதுகாப்பானது';

  @override
  String get verdictSuspicious => 'சந்தேகத்திற்குரியது';

  @override
  String get verdictMalicious => 'தீங்கானது';

  @override
  String get verdictUnknown => 'தெரியவில்லை';

  @override
  String get verdictError => 'பிழை';

  @override
  String get statusQueued => 'வரிசையில் உள்ளது';

  @override
  String get statusScanning => 'ஸ்கேன் செய்யப்படுகிறது...';

  @override
  String get statusCompleted => 'முடிந்தது';

  @override
  String get statusFailed => 'தோல்வியடைந்தது';

  @override
  String get viewFullReport => 'முழு அறிக்கையை உலாவியில் பார்க்கவும்';

  @override
  String get engineFindings => 'இன்ஜின் கண்டுபிடிப்புகளின் விவரங்கள்';

  @override
  String get engineName => 'இன்ஜின்';

  @override
  String get engineCategory => 'வகை';

  @override
  String get engineResult => 'முடிவு';

  @override
  String get fileSizeExceeded => 'கோப்பின் அளவு வரம்பை மீறியுள்ளது';

  @override
  String get shareReport => 'அறிக்கையைப் பகிரவும்';

  @override
  String get settingsProviders => 'பாதுகாப்பு வழங்குநர்கள்';

  @override
  String get settingsPrivacy => 'தனியுரிமை அமைப்புகள்';

  @override
  String get hashFirstTitle => 'முதலில் ஹாஷ் பயன்முறை';

  @override
  String get hashFirstDesc => 'கோப்பை பதிவேற்றும் முன் ஹாஷை சரிபார்க்கவும்';

  @override
  String get clearHistory => 'வரலாற்றை அழிக்கவும்';

  @override
  String get clearHistoryConfirm =>
      'அனைத்து முந்தைய ஸ்கேன் வரலாற்றையும் நிச்சயமாக அழிக்க விரும்புகிறீர்களா?';

  @override
  String get historyCleared => 'ஸ்கேன் வரலாறு வெற்றிகரமாக அழிக்கப்பட்டது';

  @override
  String get devSectionTitle => 'டெவலப்பர் தகவல்';

  @override
  String get email => 'மின்னஞ்சல்';

  @override
  String get website => 'வலைத்தளம்';

  @override
  String get copiedToClipboard => 'கிளிப்போர்டில் நகலெடுக்கப்பட்டது';

  @override
  String get copyHash => 'நகலெடு';

  @override
  String get themeDarkSubtitle => 'பின்னணி #212327 • பொத்தான்கள் #232627';

  @override
  String get themeLightSubtitle => 'பின்னணி #EFEEF1 • பொத்தான்கள் #FEFEFE';

  @override
  String get themeSystemSubtitle => 'கணினி தோற்றத்துடன் பொருந்துங்கள்';
}
