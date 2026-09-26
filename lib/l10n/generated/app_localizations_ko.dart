// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'Mirsad';

  @override
  String get appSubtitle => '멀티 엔진 파일 보안 스캐너';

  @override
  String get studioName => 'Juthoor Studio';

  @override
  String get appDescription =>
      'Mirsad는 악성코드와 위협을 탐지하기 위해 여러 병렬 보안 엔진을 통해 파일을 검사하고 분석하는 고급 방어 보안 플랫폼입니다.';

  @override
  String get splashGetStarted => '검사 시작';

  @override
  String get btnNext => '다음';

  @override
  String get btnSkip => '건너뛰기';

  @override
  String get btnBack => '뒤로';

  @override
  String get btnCancel => '취소';

  @override
  String get btnConfirm => '확인';

  @override
  String get btnDone => '완료';

  @override
  String get btnSave => '저장';

  @override
  String get btnProceed => '계속';

  @override
  String get btnRescan => '재검사';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String get searchLanguage => '언어 검색...';

  @override
  String get selectTheme => '테마 및 디자인';

  @override
  String get chooseThemeSubtitle => '편안한 환경을 위해 원하는 테마를 선택하세요';

  @override
  String get themeDark => '다크 모드';

  @override
  String get themeLight => '라이트 모드';

  @override
  String get themeSystem => '시스템 기본값';

  @override
  String get homeTitle => 'Mirsad';

  @override
  String get newScan => '새 검사';

  @override
  String get settings => '설정';

  @override
  String get scanHistory => '검사 기록';

  @override
  String get noScanHistory => '이전 검사 기록이 없습니다';

  @override
  String get noScanHistorySubtitle => '보안 엔진으로 검사할 파일을 선택하세요';

  @override
  String get selectFile => '파일 선택';

  @override
  String get dragDropFile => '파일을 여기에 끌어다 놓거나 클릭하여 찾아보기';

  @override
  String get computingHashes => '암호화 해시 계산 중 (SHA-256 / SHA-1 / MD5)...';

  @override
  String get scanningEngines => '보안 엔진에서 검사 중...';

  @override
  String get uploadConfirmTitle => '파일 업로드 확인';

  @override
  String get uploadConfirmDesc =>
      '이 파일 해시에 대한 이전 보고서를 찾을 수 없습니다. 정밀 분석을 위해 파일을 업로드하시겠습니까?';

  @override
  String get hashOnlyMode => '해시 조회만 수행 (엄격한 개인정보 보호)';

  @override
  String get fullUploadMode => '파일 업로드 및 정밀 검사';

  @override
  String get summaryTitle => '검사 요약';

  @override
  String get fileName => '파일 이름';

  @override
  String get fileSize => '파일 크기';

  @override
  String get hashSha256 => 'SHA-256 해시';

  @override
  String get hashSha1 => 'SHA-1 해시';

  @override
  String get hashMd5 => 'MD5 해시';

  @override
  String get aggregatedVerdict => '종합 판정';

  @override
  String flaggedCount(int flagged, int total) {
    return '$total개 중 $flagged개의 보안 엔진이 이 파일을 위협으로 탐지했습니다';
  }

  @override
  String get verdictClean => '안전';

  @override
  String get verdictSuspicious => '의심스러움';

  @override
  String get verdictMalicious => '악성';

  @override
  String get verdictUnknown => '알 수 없음';

  @override
  String get verdictError => '오류';

  @override
  String get statusQueued => '대기 중';

  @override
  String get statusScanning => '검사 중...';

  @override
  String get statusCompleted => '완료됨';

  @override
  String get statusFailed => '실패함';

  @override
  String get viewFullReport => '브라우저에서 전체 보고서 보기';

  @override
  String get engineFindings => '엔진별 세부 결과';

  @override
  String get engineName => '엔진';

  @override
  String get engineCategory => '카테고리';

  @override
  String get engineResult => '결과';

  @override
  String get fileSizeExceeded => '파일 크기가 제한을 초과했습니다';

  @override
  String get shareReport => '보고서 공유';

  @override
  String get settingsProviders => '보안 엔진';

  @override
  String get settingsPrivacy => '개인정보 설정';

  @override
  String get hashFirstTitle => '해시 우선 모드';

  @override
  String get hashFirstDesc => '파일 업로드 요청 전 해시를 먼저 조회';

  @override
  String get clearHistory => '기록 지우기';

  @override
  String get clearHistoryConfirm => '모든 이전 검사 기록을 삭제하시겠습니까?';

  @override
  String get historyCleared => '검사 기록이 성공적으로 삭제되었습니다';

  @override
  String get devSectionTitle => '개발자 정보';

  @override
  String get email => '이메일';

  @override
  String get website => '웹사이트';

  @override
  String get copiedToClipboard => '클립보드에 복사됨';

  @override
  String get copyHash => '복사';

  @override
  String get themeDarkSubtitle => '배경 #212327 • 버튼 #232627';

  @override
  String get themeLightSubtitle => '배경 #EFEEF1 • 버튼 #FEFEFE';

  @override
  String get themeSystemSubtitle => '시스템 디자인과 맞춤';
}
