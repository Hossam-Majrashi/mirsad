// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => 'マルチエンジン・ファイルセキュリティスキャナー';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad は、マルウェアや脅威を検出するために、複数の並列セキュリティエンジンでファイルをスキャン・分析する高度な防御セキュリティプラットフォームです。';

  @override
  String get splashGetStarted => 'スキャンを開始';

  @override
  String get btnNext => '次へ';

  @override
  String get btnSkip => 'スキップ';

  @override
  String get btnBack => '戻る';

  @override
  String get btnCancel => 'キャンセル';

  @override
  String get btnConfirm => '確認';

  @override
  String get btnDone => '完了';

  @override
  String get btnSave => '保存';

  @override
  String get btnProceed => '続行';

  @override
  String get btnRescan => '再スキャン';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get searchLanguage => '言語を検索...';

  @override
  String get selectTheme => 'テーマと外観';

  @override
  String get chooseThemeSubtitle => '快適な利用体験のためにお好みのテーマを選択してください';

  @override
  String get themeDark => 'ダークモード';

  @override
  String get themeLight => 'ライトモード';

  @override
  String get themeSystem => 'システムデフォルト';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => '新規スキャン';

  @override
  String get settings => '設定';

  @override
  String get scanHistory => 'スキャン履歴';

  @override
  String get noScanHistory => '過去のスキャン履歴はありません';

  @override
  String get noScanHistorySubtitle => '高度なセキュリティエンジンでスキャンするファイルを選択してください';

  @override
  String get selectFile => 'ファイルを選択';

  @override
  String get dragDropFile => 'ファイルをここにドラッグ＆ドロップ、またはクリックして参照';

  @override
  String get computingHashes => '暗号化ハッシュを計算中 (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => 'セキュリティエンジンでスキャン中...';

  @override
  String get uploadConfirmTitle => 'ファイルのアップロード確認';

  @override
  String get uploadConfirmDesc =>
      'このファイルのハッシュに関する過去のレポートは見つかりませんでした。詳細な分析のためにファイルをアップロードしますか？';

  @override
  String get hashOnlyMode => 'ハッシュ検索のみ (厳格なプライバシーモード)';

  @override
  String get fullUploadMode => 'ファイルをアップロードしてディープスキャン';

  @override
  String get summaryTitle => 'スキャン概要';

  @override
  String get fileName => 'ファイル名';

  @override
  String get fileSize => 'ファイルサイズ';

  @override
  String get hashSha256 => 'SHA-256 ハッシュ';

  @override
  String get hashSha1 => 'SHA-1 ハッシュ';

  @override
  String get hashMd5 => 'MD5 ハッシュ';

  @override
  String get aggregatedVerdict => '総合判定';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total 社中 $flagged 社のエンジンがこのファイルを脅威として検出しました';
  }

  @override
  String get verdictClean => '安全';

  @override
  String get verdictSuspicious => '疑わしい';

  @override
  String get verdictMalicious => '悪意あり';

  @override
  String get verdictUnknown => '不明';

  @override
  String get verdictError => 'エラー';

  @override
  String get statusQueued => '待機中';

  @override
  String get statusScanning => 'スキャン中...';

  @override
  String get statusCompleted => '完了';

  @override
  String get statusFailed => '失敗';

  @override
  String get viewFullReport => 'ブラウザで完全なレポートを表示';

  @override
  String get engineFindings => 'エンジン検出結果の詳細';

  @override
  String get engineName => 'エンジン';

  @override
  String get engineCategory => 'カテゴリ';

  @override
  String get engineResult => '結果';

  @override
  String get fileSizeExceeded => 'ファイルサイズが制限を超えています';

  @override
  String get shareReport => 'レポートを共有';

  @override
  String get settingsProviders => 'セキュリティエンジン';

  @override
  String get settingsPrivacy => 'プライバシー設定';

  @override
  String get hashFirstTitle => 'ハッシュ優先モード';

  @override
  String get hashFirstDesc => 'ファイルアップロードを要求する前にハッシュを照会';

  @override
  String get clearHistory => '履歴を消去';

  @override
  String get clearHistoryConfirm => '以前のスキャン履歴をすべて消去してもよろしいですか？';

  @override
  String get historyCleared => 'スキャン履歴を正常に消去しました';

  @override
  String get devSectionTitle => '開発者情報';

  @override
  String get email => 'メールアドレス';

  @override
  String get website => 'ウェブサイト';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしました';

  @override
  String get copyHash => 'コピー';

  @override
  String get themeDarkSubtitle => '背景 #212327 • ボタン #232627';

  @override
  String get themeLightSubtitle => '背景 #EFEEF1 • ボタン #FEFEFE';

  @override
  String get themeSystemSubtitle => 'システムの外観に合わせる';
}
