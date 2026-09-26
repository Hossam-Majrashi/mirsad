// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => '多引擎文件安全扫描器';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad 是一个先进的防御性安全平台，利用多个并行安全引擎对文件进行扫描和分析，以检测恶意软件与威胁。';

  @override
  String get splashGetStarted => '开始扫描';

  @override
  String get btnNext => '下一步';

  @override
  String get btnSkip => '跳过';

  @override
  String get btnBack => '返回';

  @override
  String get btnCancel => '取消';

  @override
  String get btnConfirm => '确认';

  @override
  String get btnDone => '完成';

  @override
  String get btnSave => '保存';

  @override
  String get btnProceed => '继续';

  @override
  String get btnRescan => '重新扫描';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get searchLanguage => '搜索语言...';

  @override
  String get selectTheme => '主题与外观';

  @override
  String get chooseThemeSubtitle => '选择您偏好的主题以获得舒适体验';

  @override
  String get themeDark => '深色模式';

  @override
  String get themeLight => '浅色模式';

  @override
  String get themeSystem => '系统默认';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => '新建扫描';

  @override
  String get settings => '设置';

  @override
  String get scanHistory => '扫描历史';

  @override
  String get noScanHistory => '暂无历史扫描记录';

  @override
  String get noScanHistorySubtitle => '选择一个文件以开始多引擎安全扫描';

  @override
  String get selectFile => '选择文件';

  @override
  String get dragDropFile => '将文件拖放至此处，或点击浏览';

  @override
  String get computingHashes => '正在计算加密哈希值 (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => '正在通过多个安全引擎进行扫描...';

  @override
  String get uploadConfirmTitle => '确认上传文件';

  @override
  String get uploadConfirmDesc => '未找到此文件哈希的历史报告。您是否希望上传文件以进行深度分析？';

  @override
  String get hashOnlyMode => '仅查询哈希 (严格隐私模式)';

  @override
  String get fullUploadMode => '上传文件并深度扫描';

  @override
  String get summaryTitle => '扫描摘要';

  @override
  String get fileName => '文件名';

  @override
  String get fileSize => '文件大小';

  @override
  String get hashSha256 => 'SHA-256 哈希';

  @override
  String get hashSha1 => 'SHA-1 哈希';

  @override
  String get hashMd5 => 'MD5 哈希';

  @override
  String get aggregatedVerdict => '综合判定';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total 个引擎中有 $flagged 个标记此文件为威胁';
  }

  @override
  String get verdictClean => '安全';

  @override
  String get verdictSuspicious => '可疑';

  @override
  String get verdictMalicious => '恶意';

  @override
  String get verdictUnknown => '未知';

  @override
  String get verdictError => '错误';

  @override
  String get statusQueued => '排队中';

  @override
  String get statusScanning => '扫描中...';

  @override
  String get statusCompleted => '已完成';

  @override
  String get statusFailed => '失败';

  @override
  String get viewFullReport => '在浏览器中查看完整报告';

  @override
  String get engineFindings => '安全引擎详细结果';

  @override
  String get engineName => '引擎';

  @override
  String get engineCategory => '分类';

  @override
  String get engineResult => '结果';

  @override
  String get fileSizeExceeded => '文件大小超出引擎限制';

  @override
  String get shareReport => '分享报告';

  @override
  String get settingsProviders => '安全引擎';

  @override
  String get settingsPrivacy => '隐私设置';

  @override
  String get hashFirstTitle => '哈希优先模式';

  @override
  String get hashFirstDesc => '在请求上传文件前优先查询哈希';

  @override
  String get clearHistory => '清除历史记录';

  @override
  String get clearHistoryConfirm => '您确定要清除所有先前的扫描记录吗？';

  @override
  String get historyCleared => '扫描历史已成功清除';

  @override
  String get devSectionTitle => '开发者信息';

  @override
  String get email => '电子邮箱';

  @override
  String get website => '官方网站';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get copyHash => '复制';

  @override
  String get themeDarkSubtitle => '背景 #212327 • 按钮 #232627';

  @override
  String get themeLightSubtitle => '背景 #EFEEF1 • 按钮 #FEFEFE';

  @override
  String get themeSystemSubtitle => '匹配系统外观';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => '多引擎檔案安全掃描器';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad 是一個先進的防禦性安全平台，利用多個並行安全引擎對檔案進行掃描與分析，以偵測惡意軟體與威脅。';

  @override
  String get splashGetStarted => '開始掃描';

  @override
  String get btnNext => '下一步';

  @override
  String get btnSkip => '略過';

  @override
  String get btnBack => '返回';

  @override
  String get btnCancel => '取消';

  @override
  String get btnConfirm => '確認';

  @override
  String get btnDone => '完成';

  @override
  String get btnSave => '儲存';

  @override
  String get btnProceed => '繼續';

  @override
  String get btnRescan => '重新掃描';

  @override
  String get selectLanguage => '選擇語言';

  @override
  String get searchLanguage => '搜尋語言...';

  @override
  String get selectTheme => '主題與外觀';

  @override
  String get chooseThemeSubtitle => '選擇您偏好的主題以獲得舒適體驗';

  @override
  String get themeDark => '深色模式';

  @override
  String get themeLight => '淺色模式';

  @override
  String get themeSystem => '系統預設';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => '新增掃描';

  @override
  String get settings => '設定';

  @override
  String get scanHistory => '掃描紀錄';

  @override
  String get noScanHistory => '暫無歷史掃描紀錄';

  @override
  String get noScanHistorySubtitle => '選擇一個檔案以開始多引擎安全掃描';

  @override
  String get selectFile => '選擇檔案';

  @override
  String get dragDropFile => '將檔案拖放至此處，或點擊瀏覽';

  @override
  String get computingHashes => '正在計算加密雜湊值 (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => '正在透過多個安全引擎進行掃描...';

  @override
  String get uploadConfirmTitle => '確認上傳檔案';

  @override
  String get uploadConfirmDesc => '未找到此檔案雜湊的歷史報告。您是否希望上傳檔案以進行深度分析？';

  @override
  String get hashOnlyMode => '僅查詢雜湊 (嚴格隱私模式)';

  @override
  String get fullUploadMode => '上傳檔案並深度掃描';

  @override
  String get summaryTitle => '掃描摘要';

  @override
  String get fileName => '檔案名稱';

  @override
  String get fileSize => '檔案大小';

  @override
  String get hashSha256 => 'SHA-256 雜湊';

  @override
  String get hashSha1 => 'SHA-1 雜湊';

  @override
  String get hashMd5 => 'MD5 雜湊';

  @override
  String get aggregatedVerdict => '綜合判定';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total 個引擎中有 $flagged 個標記此檔案為威脅';
  }

  @override
  String get verdictClean => '安全';

  @override
  String get verdictSuspicious => '可疑';

  @override
  String get verdictMalicious => '惡意';

  @override
  String get verdictUnknown => '未知';

  @override
  String get verdictError => '錯誤';

  @override
  String get statusQueued => '排隊中';

  @override
  String get statusScanning => '掃描中...';

  @override
  String get statusCompleted => '已完成';

  @override
  String get statusFailed => '失敗';

  @override
  String get viewFullReport => '在瀏覽器中檢視完整報告';

  @override
  String get engineFindings => '安全引擎詳細結果';

  @override
  String get engineName => '引擎';

  @override
  String get engineCategory => '分類';

  @override
  String get engineResult => '結果';

  @override
  String get fileSizeExceeded => '檔案大小超出引擎限制';

  @override
  String get shareReport => '分享報告';

  @override
  String get settingsProviders => '安全引擎';

  @override
  String get settingsPrivacy => '隱私設定';

  @override
  String get hashFirstTitle => '雜湊優先模式';

  @override
  String get hashFirstDesc => '在請求上傳檔案前優先查詢雜湊';

  @override
  String get clearHistory => '清除歷史紀錄';

  @override
  String get clearHistoryConfirm => '您確定要清除所有先前的掃描紀錄嗎？';

  @override
  String get historyCleared => '掃描歷史已成功清除';

  @override
  String get devSectionTitle => '開發者資訊';

  @override
  String get email => '電子郵件';

  @override
  String get website => '官方網站';

  @override
  String get copiedToClipboard => '已複製到剪貼簿';

  @override
  String get copyHash => '複製';

  @override
  String get themeDarkSubtitle => '背景 #212327 • 按鈕 #232627';

  @override
  String get themeLightSubtitle => '背景 #EFEEF1 • 按鈕 #FEFEFE';

  @override
  String get themeSystemSubtitle => '配合系統外觀';
}
