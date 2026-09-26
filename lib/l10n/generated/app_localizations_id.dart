// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Pemindai Keamanan Berkas Multi-Mesin';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad adalah platform keamanan defensif canggih untuk memindai dan menganalisis berkas di berbagai mesin keamanan paralel guna mendeteksi malware dan ancaman.';

  @override
  String get splashGetStarted => 'Mulai Memindai';

  @override
  String get btnNext => 'Lanjut';

  @override
  String get btnSkip => 'Lewati';

  @override
  String get btnBack => 'Kembali';

  @override
  String get btnCancel => 'Batal';

  @override
  String get btnConfirm => 'Konfirmasi';

  @override
  String get btnDone => 'Selesai';

  @override
  String get btnSave => 'Simpan';

  @override
  String get btnProceed => 'Lanjutkan';

  @override
  String get btnRescan => 'Pindai Ulang';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get searchLanguage => 'Cari bahasa...';

  @override
  String get selectTheme => 'Tema & Tampilan';

  @override
  String get chooseThemeSubtitle =>
      'Pilih tema yang Anda sukai untuk pengalaman yang nyaman';

  @override
  String get themeDark => 'Mode Gelap';

  @override
  String get themeLight => 'Mode Terang';

  @override
  String get themeSystem => 'Default Sistem';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Pindai Baru';

  @override
  String get settings => 'Pengaturan';

  @override
  String get scanHistory => 'Riwayat Pemindaian';

  @override
  String get noScanHistory => 'Belum ada pemindaian sebelumnya';

  @override
  String get noScanHistorySubtitle =>
      'Pilih berkas untuk memulai pemindaian di berbagai mesin keamanan';

  @override
  String get selectFile => 'Pilih Berkas';

  @override
  String get dragDropFile =>
      'Tarik dan lepas berkas di sini, atau klik untuk memilih';

  @override
  String get computingHashes =>
      'Menghitung hash kriptografi (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Memindai di seluruh mesin keamanan...';

  @override
  String get uploadConfirmTitle => 'Konfirmasi Unggah Berkas';

  @override
  String get uploadConfirmDesc =>
      'Tidak ada laporan sebelumnya untuk hash berkas ini. Apakah Anda ingin mengunggah berkas untuk analisis mendalam?';

  @override
  String get hashOnlyMode => 'Pencarian Berbasis Hash Saja (Privasi Ketat)';

  @override
  String get fullUploadMode => 'Unggah Berkas & Pindai Mendalam';

  @override
  String get summaryTitle => 'Ringkasan Pemindaian';

  @override
  String get fileName => 'Nama Berkas';

  @override
  String get fileSize => 'Ukuran Berkas';

  @override
  String get hashSha256 => 'Hash SHA-256';

  @override
  String get hashSha1 => 'Hash SHA-1';

  @override
  String get hashMd5 => 'Hash MD5';

  @override
  String get aggregatedVerdict => 'Hasil Keseluruhan';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged dari $total penyedia menandai berkas ini';
  }

  @override
  String get verdictClean => 'Bersih';

  @override
  String get verdictSuspicious => 'Mencurigakan';

  @override
  String get verdictMalicious => 'Berbahaya';

  @override
  String get verdictUnknown => 'Tidak Diketahui';

  @override
  String get verdictError => 'Kesalahan';

  @override
  String get statusQueued => 'Dalam Antrean';

  @override
  String get statusScanning => 'Sedang Memindai...';

  @override
  String get statusCompleted => 'Selesai';

  @override
  String get statusFailed => 'Gagal';

  @override
  String get viewFullReport => 'Lihat Laporan Lengkap di Peramban';

  @override
  String get engineFindings => 'Rincian Temuan Mesin';

  @override
  String get engineName => 'Mesin';

  @override
  String get engineCategory => 'Kategori';

  @override
  String get engineResult => 'Hasil';

  @override
  String get fileSizeExceeded => 'Ukuran berkas melebihi batas penyedia';

  @override
  String get shareReport => 'Bagikan Laporan';

  @override
  String get settingsProviders => 'Penyedia Keamanan';

  @override
  String get settingsPrivacy => 'Pengaturan Privasi';

  @override
  String get hashFirstTitle => 'Mode Hash Dahulu';

  @override
  String get hashFirstDesc => 'Periksa hash sebelum meminta unggah berkas';

  @override
  String get clearHistory => 'Hapus Riwayat Pemindaian';

  @override
  String get clearHistoryConfirm =>
      'Apakah Anda yakin ingin menghapus semua riwayat pemindaian sebelumnya?';

  @override
  String get historyCleared => 'Riwayat pemindaian berhasil dihapus';

  @override
  String get devSectionTitle => 'Informasi Pengembang';

  @override
  String get email => 'Email';

  @override
  String get website => 'Situs Web';

  @override
  String get copiedToClipboard => 'Disalin ke papan klip';

  @override
  String get copyHash => 'Salin';

  @override
  String get themeDarkSubtitle => 'Latar belakang #212327 • Tombol #232627';

  @override
  String get themeLightSubtitle => 'Latar belakang #EFEEF1 • Tombol #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Sesuaikan tampilan sistem';
}
