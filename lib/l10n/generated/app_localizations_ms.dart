// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Pengimbas Keselamatan Fail Pelbagai Enjin';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad ialah platform keselamatan defensif lanjutan untuk mengimbas dan menganalisis fail merentasi pelbagai enjin keselamatan selari bagi mengesan perisian hasad dan ancaman.';

  @override
  String get splashGetStarted => 'Mula Mengimbas';

  @override
  String get btnNext => 'Seterusnya';

  @override
  String get btnSkip => 'Langkau';

  @override
  String get btnBack => 'Kembali';

  @override
  String get btnCancel => 'Batal';

  @override
  String get btnConfirm => 'Sahkan';

  @override
  String get btnDone => 'Selesai';

  @override
  String get btnSave => 'Simpan';

  @override
  String get btnProceed => 'Teruskan';

  @override
  String get btnRescan => 'Imbas Semula';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get searchLanguage => 'Cari bahasa...';

  @override
  String get selectTheme => 'Tema & Rupa';

  @override
  String get chooseThemeSubtitle =>
      'Pilih tema pilihan anda untuk pengalaman yang selesa';

  @override
  String get themeDark => 'Mod Gelap';

  @override
  String get themeLight => 'Mod Cerah';

  @override
  String get themeSystem => 'Lalai Sistem';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Imbasan Baharu';

  @override
  String get settings => 'Tetapan';

  @override
  String get scanHistory => 'Sejarah Imbasan';

  @override
  String get noScanHistory => 'Tiada imbasan sebelumnya';

  @override
  String get noScanHistorySubtitle =>
      'Pilih fail untuk memulakan imbasan merentasi enjin keselamatan';

  @override
  String get selectFile => 'Pilih Fail';

  @override
  String get dragDropFile =>
      'Seret dan lepas fail di sini, atau klik untuk memilih';

  @override
  String get computingHashes =>
      'Mengira cincangan kriptografi (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Mengimbas merentasi enjin keselamatan...';

  @override
  String get uploadConfirmTitle => 'Sahkan Muat Naik Fail';

  @override
  String get uploadConfirmDesc =>
      'Tiada laporan terdahulu ditemui untuk cincangan fail ini. Adakah anda ingin memuat naik fail untuk analisis mendalam?';

  @override
  String get hashOnlyMode => 'Carian Cincangan Sahaja (Mod Privasi Ketat)';

  @override
  String get fullUploadMode => 'Muat Naik Fail & Imbasan Mendalam';

  @override
  String get summaryTitle => 'Ringkasan Imbasan';

  @override
  String get fileName => 'Nama Fail';

  @override
  String get fileSize => 'Saiz Fail';

  @override
  String get hashSha256 => 'Cincangan SHA-256';

  @override
  String get hashSha1 => 'Cincangan SHA-1';

  @override
  String get hashMd5 => 'Cincangan MD5';

  @override
  String get aggregatedVerdict => 'Keputusan Keseluruhan';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged daripada $total penyedia menandakan fail ini';
  }

  @override
  String get verdictClean => 'Bersih';

  @override
  String get verdictSuspicious => 'Mencurigakan';

  @override
  String get verdictMalicious => 'Berniat Jahat';

  @override
  String get verdictUnknown => 'Tidak Diketahui';

  @override
  String get verdictError => 'Ralat';

  @override
  String get statusQueued => 'Dalam Barisan';

  @override
  String get statusScanning => 'Sedang Mengimbas...';

  @override
  String get statusCompleted => 'Selesai';

  @override
  String get statusFailed => 'Gagal';

  @override
  String get viewFullReport => 'Lihat Laporan Penuh dalam Pelayar';

  @override
  String get engineFindings => 'Butiran Penemuan Enjin';

  @override
  String get engineName => 'Enjin';

  @override
  String get engineCategory => 'Kategori';

  @override
  String get engineResult => 'Keputusan';

  @override
  String get fileSizeExceeded => 'Saiz fail melebihi had penyedia';

  @override
  String get shareReport => 'Kongsi Laporan';

  @override
  String get settingsProviders => 'Penyedia Keselamatan';

  @override
  String get settingsPrivacy => 'Tetapan Privasi';

  @override
  String get hashFirstTitle => 'Mod Cincangan Dahulu';

  @override
  String get hashFirstDesc => 'Semak cincangan sebelum meminta muat naik fail';

  @override
  String get clearHistory => 'Kosongkan Sejarah';

  @override
  String get clearHistoryConfirm =>
      'Adakah anda pasti mahu memadam semua sejarah imbasan sebelumnya?';

  @override
  String get historyCleared => 'Sejarah imbasan berjaya dikosongkan';

  @override
  String get devSectionTitle => 'Maklumat Pembangun';

  @override
  String get email => 'E-mel';

  @override
  String get website => 'Laman Web';

  @override
  String get copiedToClipboard => 'Disalin ke papan keratan';

  @override
  String get copyHash => 'Salin';

  @override
  String get themeDarkSubtitle => 'Latar belakang #212327 • Butang #232627';

  @override
  String get themeLightSubtitle => 'Latar belakang #EFEEF1 • Butang #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Ikut paparan sistem';
}
