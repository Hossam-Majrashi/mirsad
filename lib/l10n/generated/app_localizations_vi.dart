// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'Trình Quét Bảo Mật Tệp Đa Công Cụ';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad là nền tảng bảo mật phòng thủ nâng cao để quét và phân tích tệp trên nhiều công cụ song song nhằm phát hiện mã độc và mối đe dọa.';

  @override
  String get splashGetStarted => 'Bắt Đầu Quét';

  @override
  String get btnNext => 'Tiếp theo';

  @override
  String get btnSkip => 'Bỏ qua';

  @override
  String get btnBack => 'Quay lại';

  @override
  String get btnCancel => 'Hủy';

  @override
  String get btnConfirm => 'Xác nhận';

  @override
  String get btnDone => 'Xong';

  @override
  String get btnSave => 'Lưu';

  @override
  String get btnProceed => 'Tiếp tục';

  @override
  String get btnRescan => 'Quét Lại';

  @override
  String get selectLanguage => 'Chọn Ngôn Ngữ';

  @override
  String get searchLanguage => 'Tìm kiếm ngôn ngữ...';

  @override
  String get selectTheme => 'Giao Diện & Màu Sắc';

  @override
  String get chooseThemeSubtitle =>
      'Chọn giao diện ưa thích để có trải nghiệm thoải mái nhất';

  @override
  String get themeDark => 'Chế Độ Tối';

  @override
  String get themeLight => 'Chế Độ Sáng';

  @override
  String get themeSystem => 'Mặc Định Hệ Thống';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'Quét Mới';

  @override
  String get settings => 'Cài Đặt';

  @override
  String get scanHistory => 'Lịch Sử Quét';

  @override
  String get noScanHistory => 'Chưa có lượt quét nào trước đây';

  @override
  String get noScanHistorySubtitle =>
      'Chọn một tệp để bắt đầu quét bằng các công cụ bảo mật';

  @override
  String get selectFile => 'Chọn Tệp';

  @override
  String get dragDropFile => 'Kéo và thả tệp vào đây, hoặc nhấp để duyệt';

  @override
  String get computingHashes =>
      'Đang tính toán mã băm mật mã (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'Đang quét trên các công cụ bảo mật...';

  @override
  String get uploadConfirmTitle => 'Xác Nhận Tải Lên Tệp';

  @override
  String get uploadConfirmDesc =>
      'Không tìm thấy báo cáo trước đó cho mã băm này. Bạn có muốn tải tệp lên để phân tích chuyên sâu không?';

  @override
  String get hashOnlyMode => 'Chỉ Tìm Kiếm Mã Băm (Bảo Mật Nghiêm Ngặt)';

  @override
  String get fullUploadMode => 'Tải Lên Tệp & Quét Chuyên Sâu';

  @override
  String get summaryTitle => 'Tóm Tắt Quét';

  @override
  String get fileName => 'Tên Tệp';

  @override
  String get fileSize => 'Kích Thước Tệp';

  @override
  String get hashSha256 => 'Mã băm SHA-256';

  @override
  String get hashSha1 => 'Mã băm SHA-1';

  @override
  String get hashMd5 => 'Mã băm MD5';

  @override
  String get aggregatedVerdict => 'Kết Luận Chung';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged trong số $total nhà cung cấp đã gắn cờ tệp này là nguy hiểm';
  }

  @override
  String get verdictClean => 'An toàn';

  @override
  String get verdictSuspicious => 'Đáng ngờ';

  @override
  String get verdictMalicious => 'Độc hại';

  @override
  String get verdictUnknown => 'Không xác định';

  @override
  String get verdictError => 'Lỗi';

  @override
  String get statusQueued => 'Đang chờ';

  @override
  String get statusScanning => 'Đang quét...';

  @override
  String get statusCompleted => 'Đã hoàn thành';

  @override
  String get statusFailed => 'Thất bại';

  @override
  String get viewFullReport => 'Xem Báo Cáo Đầy Đủ Trong Trình Duyệt';

  @override
  String get engineFindings => 'Chi Tiết Phát Hiện Của Công Cụ';

  @override
  String get engineName => 'Công cụ';

  @override
  String get engineCategory => 'Phân loại';

  @override
  String get engineResult => 'Kết quả';

  @override
  String get fileSizeExceeded => 'Kích thước tệp vượt quá giới hạn';

  @override
  String get shareReport => 'Chia Sẻ Báo Cáo';

  @override
  String get settingsProviders => 'Công Cụ Bảo Mật';

  @override
  String get settingsPrivacy => 'Cài Đặt Quyền Riêng Tư';

  @override
  String get hashFirstTitle => 'Chế Độ Mã Băm Trước';

  @override
  String get hashFirstDesc => 'Kiểm tra mã băm trước khi yêu cầu tải tệp lên';

  @override
  String get clearHistory => 'Xóa Lịch Sử';

  @override
  String get clearHistoryConfirm =>
      'Bạn có chắc chắn muốn xóa toàn bộ lịch sử quét không?';

  @override
  String get historyCleared => 'Đã xóa lịch sử quét thành công';

  @override
  String get devSectionTitle => 'Thông Tin Nhà Phát Triển';

  @override
  String get email => 'Email';

  @override
  String get website => 'Trang web';

  @override
  String get copiedToClipboard => 'Đã sao chép vào khay nhớ tạm';

  @override
  String get copyHash => 'Sao chép';

  @override
  String get themeDarkSubtitle => 'Nền #212327 • Nút #232627';

  @override
  String get themeLightSubtitle => 'Nền #EFEEF1 • Nút #FEFEFE';

  @override
  String get themeSystemSubtitle => 'Theo giao diện hệ thống';
}
