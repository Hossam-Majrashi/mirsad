import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';
import '../models/scan_models.dart';
import '../models/scanned_file_record.dart';
import '../providers/provider_registry.dart';
import '../utils/hash_utils.dart';
import 'scan_storage_service.dart';

class ScanCoordinator extends ChangeNotifier {
  static final ScanCoordinator instance = ScanCoordinator._();
  ScanCoordinator._();

  List<ScannedFileRecord> _history = [];
  ScannedFileRecord? _currentRecord;
  bool _isScanning = false;
  Timer? _pollingTimer;

  List<ScannedFileRecord> get history => _history;
  ScannedFileRecord? get currentRecord => _currentRecord;
  bool get isScanning => _isScanning;

  Future<void> initialize() async {
    _history = await ScanStorageService.instance.loadScanHistory();
    final savedProviders = await ScanStorageService.instance.getEnabledProviders();
    if (savedProviders.isNotEmpty) {
      ProviderRegistry.instance.loadEnabledStates(savedProviders);
    }

    // Resume any in-flight polls from previous sessions
    _resumeInFlightJobs();
    notifyListeners();
  }

  void setCurrentRecord(ScannedFileRecord record) {
    _currentRecord = record;
    notifyListeners();
  }

  Future<ScannedFileRecord> startScan({
    required File file,
    String? explicitFileName,
    bool? overrideAllowUpload,
  }) async {
    _isScanning = true;
    notifyListeners();

    final fileName = explicitFileName ?? file.path.split(Platform.pathSeparator).last;
    final fileHashes = await HashUtils.computeFileHashes(file);
    final hashFirstDefault = await ScanStorageService.instance.isHashFirstMode();
    final allowUpload = overrideAllowUpload ?? (!hashFirstDefault);

    final enabledProviders = ProviderRegistry.instance.getEnabledProviders();

    // Initialize record
    final recordId = DateTime.now().millisecondsSinceEpoch.toString();
    final statuses = <String, ScanStatus>{};
    final jobIds = <String, String>{};
    final results = <String, ScanResult>{};

    for (final p in enabledProviders) {
      if (!p.isFileSizeSupported(fileHashes.fileSize)) {
        statuses[p.id] = ScanStatus.skipped;
        results[p.id] = ScanResult(
          providerId: p.id,
          verdict: ScanVerdict.unknown,
          detectionRatio: '0/0',
          scanDate: DateTime.now(),
          errorMessage: 'File size exceeds provider limit (${p.sizeLimitDescription})',
        );
      } else {
        statuses[p.id] = ScanStatus.scanning;
      }
    }

    var record = ScannedFileRecord(
      id: recordId,
      fileName: fileName,
      filePath: file.path,
      fileSize: fileHashes.fileSize,
      sha256: fileHashes.sha256,
      sha1: fileHashes.sha1,
      md5: fileHashes.md5,
      scannedAt: DateTime.now(),
      providerStatuses: statuses,
      providerJobIds: jobIds,
      providerResults: results,
      hashOnlyMode: !allowUpload,
    );

    _currentRecord = record;
    _history.removeWhere((r) => r.sha256 == record.sha256);
    _history.insert(0, record);
    await ScanStorageService.instance.saveScanRecord(record);
    notifyListeners();

    // Run parallel submissions
    final futures = enabledProviders.map((provider) async {
      if (!provider.isFileSizeSupported(fileHashes.fileSize)) return;

      try {
        final submission = await provider.submit(
          file,
          sha256: fileHashes.sha256,
          allowUpload: allowUpload,
        );

        statuses[provider.id] = submission.status;
        jobIds[provider.id] = submission.jobId;

        if (submission.immediateResult != null) {
          results[provider.id] = submission.immediateResult!;
        }

        record = record.copyWith(
          providerStatuses: Map.from(statuses),
          providerJobIds: Map.from(jobIds),
          providerResults: Map.from(results),
        );
        _currentRecord = record;
        await ScanStorageService.instance.updateScanRecord(record);
        notifyListeners();
      } catch (e) {
        statuses[provider.id] = ScanStatus.failed;
        results[provider.id] = ScanResult(
          providerId: provider.id,
          verdict: ScanVerdict.error,
          detectionRatio: '0/0',
          scanDate: DateTime.now(),
          errorMessage: e.toString(),
        );
        record = record.copyWith(
          providerStatuses: Map.from(statuses),
          providerResults: Map.from(results),
        );
        _currentRecord = record;
        await ScanStorageService.instance.updateScanRecord(record);
        notifyListeners();
      }
    });

    await Future.wait(futures);

    _isScanning = record.isStillScanning;
    _currentRecord = record;
    await ScanStorageService.instance.updateScanRecord(record);
    notifyListeners();

    _ensurePollingLoop();
    return record;
  }

  /// User explicitly confirms upload for providers that require upload consent
  Future<void> confirmUploadForCurrentFile() async {
    if (_currentRecord == null) return;
    final record = _currentRecord!;
    final filePath = record.filePath;
    if (filePath == null || filePath.isEmpty) return;

    final file = File(filePath);
    if (!await file.exists()) return;

    _isScanning = true;
    notifyListeners();

    final enabledProviders = ProviderRegistry.instance.getEnabledProviders();

    for (final p in enabledProviders) {
      // If result not completed or was queued/hash-only
      final currentStatus = record.providerStatuses[p.id];
      final currentRes = record.providerResults[p.id];
      if (currentRes == null || currentStatus == ScanStatus.queued || currentStatus == ScanStatus.failed) {
        record.providerStatuses[p.id] = ScanStatus.scanning;
      }
    }
    notifyListeners();

    final futures = enabledProviders.map((provider) async {
      final currentRes = record.providerResults[provider.id];
      if (currentRes != null && currentRes.verdict != ScanVerdict.unknown) return;

      try {
        final submission = await provider.submit(
          file,
          sha256: record.sha256,
          allowUpload: true,
        );
        record.providerStatuses[provider.id] = submission.status;
        record.providerJobIds[provider.id] = submission.jobId;
        if (submission.immediateResult != null) {
          record.providerResults[provider.id] = submission.immediateResult!;
        }
        await ScanStorageService.instance.updateScanRecord(record);
        notifyListeners();
      } catch (e) {
        record.providerStatuses[provider.id] = ScanStatus.failed;
        record.providerResults[provider.id] = ScanResult(
          providerId: provider.id,
          verdict: ScanVerdict.error,
          detectionRatio: '0/0',
          scanDate: DateTime.now(),
          errorMessage: e.toString(),
        );
        await ScanStorageService.instance.updateScanRecord(record);
        notifyListeners();
      }
    });

    await Future.wait(futures);
    _isScanning = record.isStillScanning;
    await ScanStorageService.instance.updateScanRecord(record);
    notifyListeners();

    _ensurePollingLoop();
  }

  void _ensurePollingLoop() {
    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(const Duration(seconds: 4), (timer) async {
      await _pollActiveJobs();
    });
  }

  Future<void> _pollActiveJobs() async {
    final activeRecords = _history.where((r) => r.isStillScanning).toList();
    if (activeRecords.isEmpty) {
      _pollingTimer?.cancel();
      _pollingTimer = null;
      _isScanning = false;
      notifyListeners();
      return;
    }

    for (final record in activeRecords) {
      for (final entry in record.providerStatuses.entries) {
        final providerId = entry.key;
        final status = entry.value;

        if (status == ScanStatus.scanning || status == ScanStatus.queued) {
          final jobId = record.providerJobIds[providerId];
          final provider = ProviderRegistry.instance.getProvider(providerId);

          if (provider != null && jobId != null && jobId.isNotEmpty) {
            try {
              final newStatus = await provider.pollStatus(jobId);
              record.providerStatuses[providerId] = newStatus;

              if (newStatus == ScanStatus.completed) {
                final result = await provider.getResult(jobId);
                record.providerResults[providerId] = result;
              } else if (newStatus == ScanStatus.failed) {
                record.providerResults[providerId] = ScanResult(
                  providerId: providerId,
                  verdict: ScanVerdict.error,
                  detectionRatio: '0/0',
                  scanDate: DateTime.now(),
                  errorMessage: 'Scan failed or timed out',
                );
              }
              await ScanStorageService.instance.updateScanRecord(record);
            } catch (_) {}
          }
        }
      }
    }

    _isScanning = _history.any((r) => r.isStillScanning);
    notifyListeners();
  }

  void _resumeInFlightJobs() {
    if (_history.any((r) => r.isStillScanning)) {
      _isScanning = true;
      _ensurePollingLoop();
    }
  }

  Future<void> clearHistory() async {
    await ScanStorageService.instance.clearAllHistory();
    _history.clear();
    _currentRecord = null;
    notifyListeners();
  }

  Future<void> toggleProvider(String id, bool enabled) async {
    ProviderRegistry.instance.setEnabled(id, enabled);
    await ScanStorageService.instance.setEnabledProviders(ProviderRegistry.instance.getEnabledIds());
    notifyListeners();
  }

  @override
  void dispose() {
    _pollingTimer?.cancel();
    super.dispose();
  }
}
