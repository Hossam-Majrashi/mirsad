import 'package:universal_io/io.dart';
import '../models/scan_models.dart';

abstract class ScanProvider {
  String get id;
  String get displayName;
  bool get requiresApiKey;
  int get maxFileSizeBytes => 32 * 1024 * 1024; // Default 32 MB
  String get sizeLimitDescription => '${maxFileSizeBytes ~/ (1024 * 1024)} MB';

  bool isFileSizeSupported(int bytes) => bytes <= maxFileSizeBytes;

  /// Submits a file for analysis (or performs hash lookup if supported).
  /// If [allowUpload] is false and hash lookup fails, provider returns a submission
  /// indicating [needsUploadConsent: true].
  Future<ScanSubmission> submit(
    File file, {
    String? sha256,
    bool allowUpload = false,
  });

  /// Polls status of in-flight analysis job.
  Future<ScanStatus> pollStatus(String jobId);

  /// Retrieves final detailed normalized scan result.
  Future<ScanResult> getResult(String jobId);
}
