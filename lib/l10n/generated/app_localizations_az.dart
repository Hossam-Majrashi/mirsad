// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Çox Mühərrikli Fayl Təhlükəsizlik Skaneri';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad zərərli proqramları və təhdidləri aşkar etmək üçün faylları paralel təhlükəsizlik mühərriklərində skan edən və analiz edən qabaqcıl platformadır.';

  @override
  String get splashGetStarted => 'Skan etməyə Başla';

  @override
  String get btnNext => 'Növbəti';

  @override
  String get btnSkip => 'Keç';

  @override
  String get btnBack => 'Geri';

  @override
  String get btnCancel => 'Ləğv et';

  @override
  String get btnConfirm => 'Təsdiqlə';

  @override
  String get btnDone => 'Hazırdır';

  @override
  String get btnSave => 'Yadda saxla';

  @override
  String get btnProceed => 'Davam et';

  @override
  String get btnRescan => 'Yenidən Skan et';

  @override
  String get selectLanguage => 'Dili Seçin';

  @override
  String get searchLanguage => 'Dil axtarın...';

  @override
  String get selectTheme => 'Mövzu və Görünüş';

  @override
  String get chooseThemeSubtitle =>
      'Rahat təcrübə üçün bəyəndiyiniz mövzunu seçin';

  @override
  String get themeDark => 'Qaranlıq Rejim';

  @override
  String get themeLight => 'İşıqlı Rejim';

  @override
  String get themeSystem => 'Sistem Standartı';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Yeni Skan';

  @override
  String get settings => 'Parametrlər';

  @override
  String get scanHistory => 'Skan Tarixçəsi';

  @override
  String get noScanHistory => 'Əvvəlki skan yoxdur';

  @override
  String get noScanHistorySubtitle =>
      'Təhlükəsizlik mühərrikləri ilə yoxlamaq üçün fayl seçin';

  @override
  String get selectFile => 'Fayl Seç';

  @override
  String get dragDropFile =>
      'Faylı buraya sürükləyib buraxın və ya seçmək üçün klikləyin';

  @override
  String get computingHashes =>
      'Kriptoqrafik heşlər hesablanır (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Təhlükəsizlik mühərriklərində skan edilir...';

  @override
  String get uploadConfirmTitle => 'Fayl Yüklənməsini Təsdiqləyin';

  @override
  String get uploadConfirmDesc =>
      'Bu fayl heşi üçün əvvəlki hesabat tapılmadı. Dərin analiz üçün faylı yükləmək istəyirsiniz?';

  @override
  String get hashOnlyMode => 'Yalnız Heş Axtarışı (Ciddi Məxfilik Rejimi)';

  @override
  String get fullUploadMode => 'Faylı Yüklə və Dərindən Skan et';

  @override
  String get summaryTitle => 'Skan Xülasəsi';

  @override
  String get fileName => 'Faylın Adı';

  @override
  String get fileSize => 'Faylın Həcmi';

  @override
  String get hashSha256 => 'SHA-256 Heşi';

  @override
  String get hashSha1 => 'SHA-1 Heşi';

  @override
  String get hashMd5 => 'MD5 Heşi';

  @override
  String get aggregatedVerdict => 'Ümumi Nəticə';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total təminatçıdan $flagged-i bu faylı təhlükəli kimi qeyd etdi';
  }

  @override
  String get verdictClean => 'Təmiz';

  @override
  String get verdictSuspicious => 'Şübhəli';

  @override
  String get verdictMalicious => 'Zərərli';

  @override
  String get verdictUnknown => 'Bilinmir';

  @override
  String get verdictError => 'Xəta';

  @override
  String get statusQueued => 'Növbədədir';

  @override
  String get statusScanning => 'Skan edilir...';

  @override
  String get statusCompleted => 'Tamamlandı';

  @override
  String get statusFailed => 'Uğursuz oldu';

  @override
  String get viewFullReport => 'Brauzerdə Tam Hesabata Bax';

  @override
  String get engineFindings => 'Mühərrik Nəticələrinin Təfərrüatları';

  @override
  String get engineName => 'Mühərrik';

  @override
  String get engineCategory => 'Kateqoriya';

  @override
  String get engineResult => 'Nəticə';

  @override
  String get fileSizeExceeded => 'Faylın həcmi limiti aşır';

  @override
  String get shareReport => 'Hesabatı Paylaş';

  @override
  String get settingsProviders => 'Təhlükəsizlik Təminatçıları';

  @override
  String get settingsPrivacy => 'Məxfilik Parametrləri';

  @override
  String get hashFirstTitle => 'Əvvəlcə Heş Rejimi';

  @override
  String get hashFirstDesc => 'Fayl yükləməzdən əvvəl heşi sorğulayın';

  @override
  String get clearHistory => 'Tarixçəni Təmizlə';

  @override
  String get clearHistoryConfirm =>
      'Bütün skan tarixçəsini təmizləmək istədiyinizə əminsiniz?';

  @override
  String get historyCleared => 'Skan tarixçəsi uğurla təmizləndi';

  @override
  String get devSectionTitle => 'Tərtibatçı Məlumatı';

  @override
  String get email => 'E-poçt';

  @override
  String get website => 'Vebsayt';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı';

  @override
  String get copyHash => 'Kopyala';

  @override
  String get themeDarkSubtitle => 'Arxa plan #212327 • Düymələr #232627';

  @override
  String get themeLightSubtitle => 'Arxa plan #EFEEF1 • Düymələr #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Sistem görünüşünə uyğunlaşdır';
}
