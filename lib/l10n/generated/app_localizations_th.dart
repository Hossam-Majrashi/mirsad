// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'โปรแกรมสแกนความปลอดภัยของไฟล์แบบหลายเอนจิน';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad เป็นแพลตฟอร์มความปลอดภัยเชิงป้องกันขั้นสูงสำหรับสแกนและวิเคราะห์ไฟล์ผ่านเอนจินความปลอดภัยคู่ขนานเพื่อตรวจจับมัลแวร์และภัยคุกคาม';

  @override
  String get splashGetStarted => 'เริ่มการสแกน';

  @override
  String get btnNext => 'ถัดไป';

  @override
  String get btnSkip => 'ข้าม';

  @override
  String get btnBack => 'ย้อนกลับ';

  @override
  String get btnCancel => 'ยกเลิก';

  @override
  String get btnConfirm => 'ยืนยัน';

  @override
  String get btnDone => 'เสร็จสิ้น';

  @override
  String get btnSave => 'บันทึก';

  @override
  String get btnProceed => 'ดำเนินการต่อ';

  @override
  String get btnRescan => 'สแกนอีกครั้ง';

  @override
  String get selectLanguage => 'เลือกภาษา';

  @override
  String get searchLanguage => 'ค้นหาภาษา...';

  @override
  String get selectTheme => 'ธีมและรูปลักษณ์';

  @override
  String get chooseThemeSubtitle =>
      'เลือกธีมที่คุณต้องการเพื่อประสบการณ์ที่สบายตา';

  @override
  String get themeDark => 'โหมดมืด';

  @override
  String get themeLight => 'โหมดสว่าง';

  @override
  String get themeSystem => 'ค่าเริ่มต้นของระบบ';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => 'การสแกนใหม่';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get scanHistory => 'ประวัติการสแกน';

  @override
  String get noScanHistory => 'ไม่มีประวัติการสแกนก่อนหน้า';

  @override
  String get noScanHistorySubtitle =>
      'เลือกไฟล์เพื่อเริ่มการสแกนด้วยเอนจินความปลอดภัย';

  @override
  String get selectFile => 'เลือกไฟล์';

  @override
  String get dragDropFile => 'ลากและวางไฟล์ที่นี่ หรือคลิกเพื่อเรียกดู';

  @override
  String get computingHashes =>
      'กำลังคำนวณแฮชการเข้ารหัส (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'กำลังสแกนผ่านเอนจินความปลอดภัย...';

  @override
  String get uploadConfirmTitle => 'ยืนยันการอัปโหลดไฟล์';

  @override
  String get uploadConfirmDesc =>
      'ไม่พบรายงานก่อนหน้านี้สำหรับแฮชของไฟล์นี้ คุณต้องการอัปโหลดไฟล์เพื่อการวิเคราะห์เชิงลึกหรือไม่?';

  @override
  String get hashOnlyMode => 'ค้นหาเฉพาะแฮช (โหมดความเป็นส่วนตัวเข้มงวด)';

  @override
  String get fullUploadMode => 'อัปโหลดไฟล์และสแกนเชิงลึก';

  @override
  String get summaryTitle => 'สรุปผลการสแกน';

  @override
  String get fileName => 'ชื่อไฟล์';

  @override
  String get fileSize => 'ขนาดไฟล์';

  @override
  String get hashSha256 => 'แฮช SHA-256';

  @override
  String get hashSha1 => 'แฮช SHA-1';

  @override
  String get hashMd5 => 'แฮช MD5';

  @override
  String get aggregatedVerdict => 'คำตัดสินโดยรวม';

  @override
  String flaggedCount(int flagged, int total) {
    return '$flagged จาก $total ผู้ให้บริการระบุว่าไฟล์นี้เป็นภัยคุกคาม';
  }

  @override
  String get verdictClean => 'ปลอดภัย';

  @override
  String get verdictSuspicious => 'น่าสงสัย';

  @override
  String get verdictMalicious => 'เป็นอันตราย';

  @override
  String get verdictUnknown => 'ไม่ทราบ';

  @override
  String get verdictError => 'ข้อผิดพลาด';

  @override
  String get statusQueued => 'อยู่ในคิว';

  @override
  String get statusScanning => 'กำลังสแกน...';

  @override
  String get statusCompleted => 'เสร็จสิ้น';

  @override
  String get statusFailed => 'ล้มเหลว';

  @override
  String get viewFullReport => 'ดูรายงานฉบับเต็มในเบราว์เซอร์';

  @override
  String get engineFindings => 'รายละเอียดผลการตรวจจับของเอนจิน';

  @override
  String get engineName => 'เอนจิน';

  @override
  String get engineCategory => 'หมวดหมู่';

  @override
  String get engineResult => 'ผลลัพธ์';

  @override
  String get fileSizeExceeded => 'ขนาดไฟล์เกินขีดจำกัดที่กำหนด';

  @override
  String get shareReport => 'แชร์รายงาน';

  @override
  String get settingsProviders => 'เอนจินความปลอดภัย';

  @override
  String get settingsPrivacy => 'การตั้งค่าความเป็นส่วนตัว';

  @override
  String get hashFirstTitle => 'โหมดแฮชก่อน';

  @override
  String get hashFirstDesc => 'ตรวจสอบแฮชก่อนขออัปโหลดไฟล์';

  @override
  String get clearHistory => 'ล้างประวัติ';

  @override
  String get clearHistoryConfirm =>
      'คุณแน่ใจหรือไม่ว่าต้องการล้างประวัติการสแกนทั้งหมด?';

  @override
  String get historyCleared => 'ล้างประวัติการสแกนเรียบร้อยแล้ว';

  @override
  String get devSectionTitle => 'ข้อมูลผู้พัฒนา';

  @override
  String get email => 'อีเมล';

  @override
  String get website => 'เว็บไซต์';

  @override
  String get copiedToClipboard => 'คัดลอกไปยังคลิปบอร์ดแล้ว';

  @override
  String get copyHash => 'คัดลอก';

  @override
  String get themeDarkSubtitle => 'พื้นหลัง #212327 • ปุ่ม #232627';

  @override
  String get themeLightSubtitle => 'พื้นหลัง #EFEEF1 • ปุ่ม #FEFEFE';

  @override
  String get themeSystemSubtitle => 'ตรงตามรูปลักษณ์ของระบบ';
}
