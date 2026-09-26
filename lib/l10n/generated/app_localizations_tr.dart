// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Çok Motorlu Dosya Güvenlik Tarayıcısı';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad, kötü amaçlı yazılımları ve tehditleri tespit etmek için birden çok paralel güvenlik motorunda dosyaları tarayan gelişmiş bir güvenlik platformudur.';

  @override
  String get splashGetStarted => 'Taramayı Başlat';

  @override
  String get btnNext => 'İleri';

  @override
  String get btnSkip => 'Atla';

  @override
  String get btnBack => 'Geri';

  @override
  String get btnCancel => 'İptal';

  @override
  String get btnConfirm => 'Onayla';

  @override
  String get btnDone => 'Tamam';

  @override
  String get btnSave => 'Kaydet';

  @override
  String get btnProceed => 'Devam Et';

  @override
  String get btnRescan => 'Yeniden Tara';

  @override
  String get selectLanguage => 'Dil Seçin';

  @override
  String get searchLanguage => 'Dil ara...';

  @override
  String get selectTheme => 'Tema ve Görünüm';

  @override
  String get chooseThemeSubtitle =>
      'Konforlu bir deneyim için tercih ettiğiniz temayı seçin';

  @override
  String get themeDark => 'Karanlık Mod';

  @override
  String get themeLight => 'Aydınlık Mod';

  @override
  String get themeSystem => 'Sistem Varsayılanı';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Yeni Tarama';

  @override
  String get settings => 'Ayarlar';

  @override
  String get scanHistory => 'Tarama Geçmişi';

  @override
  String get noScanHistory => 'Önceki tarama bulunamadı';

  @override
  String get noScanHistorySubtitle =>
      'Gelişmiş güvenlik motorlarıyla taramak için bir dosya seçin';

  @override
  String get selectFile => 'Dosya Seç';

  @override
  String get dragDropFile =>
      'Bir dosyayı buraya sürükleyip bırakın veya tıklayın';

  @override
  String get computingHashes =>
      'Kriptografik karma değerler hesaplanıyor (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Güvenlik motorlarında taranıyor...';

  @override
  String get uploadConfirmTitle => 'Dosya Yüklemesini Onayla';

  @override
  String get uploadConfirmDesc =>
      'Bu dosya karması için geçmiş rapor bulunamadı. Derin analiz için dosyayı üçüncü taraf motorlara yüklemek ister misiniz?';

  @override
  String get hashOnlyMode => 'Yalnızca Karma Arama (Katı Gizlilik Modu)';

  @override
  String get fullUploadMode => 'Dosya Yükle ve Derin Tarama';

  @override
  String get summaryTitle => 'Tarama Özeti';

  @override
  String get fileName => 'Dosya Adı';

  @override
  String get fileSize => 'Dosya Boyutu';

  @override
  String get hashSha256 => 'SHA-256 Karması';

  @override
  String get hashSha1 => 'SHA-1 Karması';

  @override
  String get hashMd5 => 'MD5 Karması';

  @override
  String get aggregatedVerdict => 'Genel Karar';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged/$total sağlayıcı bu dosyayı şüpheli olarak işaretledi';
  }

  @override
  String get verdictClean => 'Temiz';

  @override
  String get verdictSuspicious => 'Şüpheli';

  @override
  String get verdictMalicious => 'Zararlı';

  @override
  String get verdictUnknown => 'Bilinmiyor';

  @override
  String get verdictError => 'Hata';

  @override
  String get statusQueued => 'Sırada';

  @override
  String get statusScanning => 'Taranıyor...';

  @override
  String get statusCompleted => 'Tamamlandı';

  @override
  String get statusFailed => 'Başarısız Oldu';

  @override
  String get viewFullReport => 'Raporun Tamamını Tarayıcıda Görüntüle';

  @override
  String get engineFindings => 'Motor Bulguları Detayı';

  @override
  String get engineName => 'Motor';

  @override
  String get engineCategory => 'Kategori';

  @override
  String get engineResult => 'Sonuç';

  @override
  String get fileSizeExceeded => 'Dosya boyutu sınırını aşıyor';

  @override
  String get shareReport => 'Raporu Paylaş';

  @override
  String get settingsProviders => 'Güvenlik Sağlayıcıları';

  @override
  String get settingsPrivacy => 'Gizlilik Ayarları';

  @override
  String get hashFirstTitle => 'Önce Karma Modu';

  @override
  String get hashFirstDesc => 'Dosya yüklemeden önce karma değerini sorgula';

  @override
  String get clearHistory => 'Geçmişi Temizle';

  @override
  String get clearHistoryConfirm =>
      'Tüm geçmiş taramaları temizlemek istediğinizden emin misiniz?';

  @override
  String get historyCleared => 'Tarama geçmişi başarıyla temizlendi';

  @override
  String get devSectionTitle => 'Geliştirici Bilgisi';

  @override
  String get email => 'E-posta';

  @override
  String get website => 'Web Sitesi';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı';

  @override
  String get copyHash => 'Kopyala';

  @override
  String get themeDarkSubtitle => 'Arka plan #212327 • Düğmeler #232627';

  @override
  String get themeLightSubtitle => 'Arka plan #EFEEF1 • Düğmeler #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Sistem görünümüne uyum sağla';
}
