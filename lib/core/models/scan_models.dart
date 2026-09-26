enum ScanVerdict {
  clean,
  suspicious,
  malicious,
  unknown,
  error;

  static ScanVerdict fromString(String val) {
    switch (val.toLowerCase()) {
      case 'clean':
        return ScanVerdict.clean;
      case 'suspicious':
        return ScanVerdict.suspicious;
      case 'malicious':
        return ScanVerdict.malicious;
      case 'error':
        return ScanVerdict.error;
      default:
        return ScanVerdict.unknown;
    }
  }
}

enum ScanStatus {
  queued,
  scanning,
  completed,
  failed,
  skipped;

  static ScanStatus fromString(String val) {
    switch (val.toLowerCase()) {
      case 'queued':
        return ScanStatus.queued;
      case 'scanning':
        return ScanStatus.scanning;
      case 'completed':
        return ScanStatus.completed;
      case 'failed':
        return ScanStatus.failed;
      case 'skipped':
        return ScanStatus.skipped;
      default:
        return ScanStatus.queued;
    }
  }
}

class EngineFinding {
  final String engineName;
  final String category;
  final String result;

  const EngineFinding({
    required this.engineName,
    required this.category,
    required this.result,
  });

  Map<String, dynamic> toJson() => {
    'engineName': engineName,
    'category': category,
    'result': result,
  };

  factory EngineFinding.fromJson(Map<String, dynamic> json) => EngineFinding(
    engineName: json['engineName'] ?? '',
    category: json['category'] ?? '',
    result: json['result'] ?? '',
  );
}

class ScanResult {
  final String providerId;
  final ScanVerdict verdict;
  final String detectionRatio;
  final DateTime scanDate;
  final String? permalink;
  final List<EngineFinding> engineFindings;
  final String? errorMessage;

  const ScanResult({
    required this.providerId,
    required this.verdict,
    required this.detectionRatio,
    required this.scanDate,
    this.permalink,
    this.engineFindings = const [],
    this.errorMessage,
  });

  Map<String, dynamic> toJson() => {
    'providerId': providerId,
    'verdict': verdict.name,
    'detectionRatio': detectionRatio,
    'scanDate': scanDate.toIso8601String(),
    'permalink': permalink,
    'engineFindings': engineFindings.map((e) => e.toJson()).toList(),
    'errorMessage': errorMessage,
  };

  factory ScanResult.fromJson(Map<String, dynamic> json) => ScanResult(
    providerId: json['providerId'] ?? '',
    verdict: ScanVerdict.fromString(json['verdict'] ?? 'unknown'),
    detectionRatio: json['detectionRatio'] ?? '0/0',
    scanDate: json['scanDate'] != null
        ? DateTime.tryParse(json['scanDate']) ?? DateTime.now()
        : DateTime.now(),
    permalink: json['permalink'],
    engineFindings: (json['engineFindings'] as List<dynamic>?)
            ?.map((e) => EngineFinding.fromJson(e as Map<String, dynamic>))
            .toList() ??
        const [],
    errorMessage: json['errorMessage'],
  );
}

class ScanSubmission {
  final String jobId;
  final ScanStatus status;
  final String? sha256;
  final ScanResult? immediateResult;
  final bool isHashLookupOnly;
  final bool needsUploadConsent;

  const ScanSubmission({
    required this.jobId,
    required this.status,
    this.sha256,
    this.immediateResult,
    this.isHashLookupOnly = false,
    this.needsUploadConsent = false,
  });

  Map<String, dynamic> toJson() => {
    'jobId': jobId,
    'status': status.name,
    'sha256': sha256,
    'immediateResult': immediateResult?.toJson(),
    'isHashLookupOnly': isHashLookupOnly,
    'needsUploadConsent': needsUploadConsent,
  };

  factory ScanSubmission.fromJson(Map<String, dynamic> json) => ScanSubmission(
    jobId: json['jobId'] ?? '',
    status: ScanStatus.fromString(json['status'] ?? 'queued'),
    sha256: json['sha256'],
    immediateResult: json['immediateResult'] != null
        ? ScanResult.fromJson(json['immediateResult'])
        : null,
    isHashLookupOnly: json['isHashLookupOnly'] ?? false,
    needsUploadConsent: json['needsUploadConsent'] ?? false,
  );
}
