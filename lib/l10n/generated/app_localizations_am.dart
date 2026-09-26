// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'ባለብዙ ሞተር የፋይል ደህንነት መመርመሪያ';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad አደገኛ ሶፍትዌሮችንና ስጋቶችን ለመለየት ፋይሎችን በትይዩ የደህንነት ሞተሮች አማካኝነት የሚመረምር የላቀ የመከላከያ መድረክ ነው።';

  @override
  String get splashGetStarted => 'ምርመራ ጀምር';

  @override
  String get btnNext => 'ቀጣይ';

  @override
  String get btnSkip => 'ዝለል';

  @override
  String get btnBack => 'ተመለስ';

  @override
  String get btnCancel => 'ሰርዝ';

  @override
  String get btnConfirm => 'አረጋግጥ';

  @override
  String get btnDone => 'ተጠናቋል';

  @override
  String get btnSave => 'አስቀምጥ';

  @override
  String get btnProceed => 'ቀጥል';

  @override
  String get btnRescan => 'እንደገና መርምር';

  @override
  String get selectLanguage => 'ቋንቋ ይምረጡ';

  @override
  String get searchLanguage => 'ቋንቋ ፈልግ...';

  @override
  String get selectTheme => 'ገጽታ እና ይዘት';

  @override
  String get chooseThemeSubtitle => 'ምቹ ተሞክሮ ለማግኘት የሚመርጡትን ገጽታ ይምረጡ';

  @override
  String get themeDark => 'ጨለማ ሁነታ';

  @override
  String get themeLight => 'ብሩህ ሁነታ';

  @override
  String get themeSystem => 'የስርዓቱ ነባሪ';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'አዲስ ምርመራ';

  @override
  String get settings => 'ቅንብሮች';

  @override
  String get scanHistory => 'የምርመራ ታሪክ';

  @override
  String get noScanHistory => 'ምንም የቀደሙ ምርመራዎች የሉም';

  @override
  String get noScanHistorySubtitle => 'በደህንነት ሞተሮች ለመመርመር ፋይል ይምረጡ';

  @override
  String get selectFile => 'ፋይል ይምረጡ';

  @override
  String get dragDropFile => 'ፋይል እዚህ ይጎትቱ እና ይጣሉ፣ ወይም ለመምረጥ ጠቅ ያድርጉ';

  @override
  String get computingHashes => 'ክሪፕቶግራፊክ ሃሾችን በማስላት ላይ...';

  @override
  String get scanningEngines => 'በደህንነት ሞተሮች ላይ በመመርመር ላይ...';

  @override
  String get uploadConfirmTitle => 'የፋይል ጭነትን ያረጋግጡ';

  @override
  String get uploadConfirmDesc =>
      'ለዚህ ፋይል ሃሽ ምንም የቀድሞ ሪፖርት አልተገኘም። ለዝርዝር ትንተና ፋይሉን መስቀል ይፈልጋሉ?';

  @override
  String get hashOnlyMode => 'የሃሽ ፍለጋ ብቻ (ጥብቅ ግላዊነት)';

  @override
  String get fullUploadMode => 'ፋይል ስቀል እና ዝርዝር ምርመራ አድርግ';

  @override
  String get summaryTitle => 'የምርመራ ማጠቃለያ';

  @override
  String get fileName => 'የፋይል ስም';

  @override
  String get fileSize => 'የፋይል መጠን';

  @override
  String get hashSha256 => 'SHA-256 ሃሽ';

  @override
  String get hashSha1 => 'SHA-1 ሃሽ';

  @override
  String get hashMd5 => 'MD5 ሃሽ';

  @override
  String get aggregatedVerdict => 'አጠቃላይ ውሳኔ';

  @override
  String flaggedCount(int flagged, int total) {
    return 'ከ$total አቅራቢዎች ውስጥ $flagged ይህን ፋይል እንደ ስጋት ፈርጀውታል';
  }

  @override
  String get verdictClean => 'ንጹህ';

  @override
  String get verdictSuspicious => 'አጠራጣሪ';

  @override
  String get verdictMalicious => 'ጎጂ';

  @override
  String get verdictUnknown => 'ያልታወቀ';

  @override
  String get verdictError => 'ስህተት';

  @override
  String get statusQueued => 'በተራ ላይ';

  @override
  String get statusScanning => 'በመመርመር ላይ...';

  @override
  String get statusCompleted => 'ተጠናቋል';

  @override
  String get statusFailed => 'አልተሳካም';

  @override
  String get viewFullReport => 'ሙሉውን ሪፖርት በአሳሽ ውስጥ ይመልከቱ';

  @override
  String get engineFindings => 'የሞተር ግኝቶች ዝርዝር';

  @override
  String get engineName => 'ሞተር';

  @override
  String get engineCategory => 'ምድብ';

  @override
  String get engineResult => 'ውጤት';

  @override
  String get fileSizeExceeded => 'የፋይል መጠን ከገደቡ በላይ ነው';

  @override
  String get shareReport => 'ሪፖርት አጋራ';

  @override
  String get settingsProviders => 'የደህንነት ሞተሮች';

  @override
  String get settingsPrivacy => 'የግላዊነት ቅንብሮች';

  @override
  String get hashFirstTitle => 'ቅድሚያ ሃሽ ሁነታ';

  @override
  String get hashFirstDesc => 'ፋይል ከመስቀል ጥያቄ በፊት ሃሹን ያረጋግጡ';

  @override
  String get clearHistory => 'ታሪክን አጽዳ';

  @override
  String get clearHistoryConfirm => 'ሁሉንም የቀደመ ምርመራ ታሪክ ለማጥፋት እርግጠኛ ነዎት?';

  @override
  String get historyCleared => 'የምርመራ ታሪክ በተሳካ ሁኔታ ተሰርዟል';

  @override
  String get devSectionTitle => 'የገንቢ መረጃ';

  @override
  String get email => 'ኢሜይል';

  @override
  String get website => 'ድረ-ገጽ';

  @override
  String get copiedToClipboard => 'ወደ ቅንጥብ ሰሌዳ ተገልብጧል';

  @override
  String get copyHash => 'ቅዳ';

  @override
  String get themeDarkSubtitle => 'ዳራ #212327 • አዝራሮች #232627';

  @override
  String get themeLightSubtitle => 'ዳራ #EFEEF1 • አዝራሮች #FEFEFE';

  @override
  String get themeSystemSubtitle => 'ከስርዓቱ ገጽታ ጋር የሚስማማ';
}
