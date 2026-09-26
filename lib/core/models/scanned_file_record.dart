import 'scan_models.dart';

class ScannedFileRecord {
  final String id;
  final String fileName;
  final String? filePath;
  final int fileSize;
  final String sha256;
  final String sha1;
  final String md5;
  final DateTime scannedAt;
  final Map<String, ScanStatus> providerStatuses;
  final Map<String, String> providerJobIds;
  final Map<String, ScanResult> providerResults;
  final bool hashOnlyMode;

  ScannedFileRecord({
    required this.id,
    required this.fileName,
    this.filePath,
    required this.fileSize,
    required this.sha256,
    required this.sha1,
    required this.md5,
    required this.scannedAt,
    Map<String, ScanStatus>? providerStatuses,
    Map<String, String>? providerJobIds,
    Map<String, ScanResult>? providerResults,
    this.hashOnlyMode = false,
  })  : providerStatuses = providerStatuses ?? {},
        providerJobIds = providerJobIds ?? {},
        providerResults = providerResults ?? {};

  ScanVerdict get aggregatedVerdict {
    if (providerResults.isEmpty) return ScanVerdict.unknown;
    var hasMalicious = false;
    var hasSuspicious = false;
    var hasClean = false;

    for (final res in providerResults.values) {
      if (res.verdict == ScanVerdict.malicious) {
        hasMalicious = true;
      } else if (res.verdict == ScanVerdict.suspicious) {
        hasSuspicious = true;
      } else if (res.verdict == ScanVerdict.clean) {
        hasClean = true;
      }
    }

    if (hasMalicious) return ScanVerdict.malicious;
    if (hasSuspicious) return ScanVerdict.suspicious;
    if (hasClean) return ScanVerdict.clean;
    return ScanVerdict.unknown;
  }

  int get flaggedCount {
    var count = 0;
    for (final res in providerResults.values) {
      if (res.verdict == ScanVerdict.malicious || res.verdict == ScanVerdict.suspicious) {
        count++;
      }
    }
    return count;
  }

  int get totalCompletedCount {
    return providerResults.length;
  }

  bool get isStillScanning {
    return providerStatuses.values.any((s) => s == ScanStatus.scanning || s == ScanStatus.queued);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScannedFileRecord && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  ScannedFileRecord copyWith({
    String? id,
    String? fileName,
    String? filePath,
    int? fileSize,
    String? sha256,
    String? sha1,
    String? md5,
    DateTime? scannedAt,
    Map<String, ScanStatus>? providerStatuses,
    Map<String, String>? providerJobIds,
    Map<String, ScanResult>? providerResults,
    bool? hashOnlyMode,
  }) {
    return ScannedFileRecord(
      id: id ?? this.id,
      fileName: fileName ?? this.fileName,
      filePath: filePath ?? this.filePath,
      fileSize: fileSize ?? this.fileSize,
      sha256: sha256 ?? this.sha256,
      sha1: sha1 ?? this.sha1,
      md5: md5 ?? this.md5,
      scannedAt: scannedAt ?? this.scannedAt,
      providerStatuses: providerStatuses ?? Map.from(this.providerStatuses),
      providerJobIds: providerJobIds ?? Map.from(this.providerJobIds),
      providerResults: providerResults ?? Map.from(this.providerResults),
      hashOnlyMode: hashOnlyMode ?? this.hashOnlyMode,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'fileName': fileName,
    'filePath': filePath,
    'fileSize': fileSize,
    'sha256': sha256,
    'sha1': sha1,
    'md5': md5,
    'scannedAt': scannedAt.toIso8601String(),
    'providerStatuses': providerStatuses.map((k, v) => MapEntry(k, v.name)),
    'providerJobIds': providerJobIds,
    'providerResults': providerResults.map((k, v) => MapEntry(k, v.toJson())),
    'hashOnlyMode': hashOnlyMode,
  };

  factory ScannedFileRecord.fromJson(Map<String, dynamic> json) {
    final statuses = <String, ScanStatus>{};
    if (json['providerStatuses'] != null) {
      (json['providerStatuses'] as Map<String, dynamic>).forEach((k, v) {
        statuses[k] = ScanStatus.fromString(v.toString());
      });
    }

    final results = <String, ScanResult>{};
    if (json['providerResults'] != null) {
      (json['providerResults'] as Map<String, dynamic>).forEach((k, v) {
        results[k] = ScanResult.fromJson(v as Map<String, dynamic>);
      });
    }

    final jobIds = <String, String>{};
    if (json['providerJobIds'] != null) {
      (json['providerJobIds'] as Map<String, dynamic>).forEach((k, v) {
        jobIds[k] = v.toString();
      });
    }

    return ScannedFileRecord(
      id: json['id'] ?? DateTime.now().millisecondsSinceEpoch.toString(),
      fileName: json['fileName'] ?? '',
      filePath: json['filePath'],
      fileSize: json['fileSize'] ?? 0,
      sha256: json['sha256'] ?? '',
      sha1: json['sha1'] ?? '',
      md5: json['md5'] ?? '',
      scannedAt: json['scannedAt'] != null
          ? DateTime.tryParse(json['scannedAt']) ?? DateTime.now()
          : DateTime.now(),
      providerStatuses: statuses,
      providerJobIds: jobIds,
      providerResults: results,
      hashOnlyMode: json['hashOnlyMode'] ?? false,
    );
  }
}
