import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mirsad/core/providers/provider_registry.dart';
import 'package:mirsad/core/providers/virustotal_provider.dart';
import 'package:mirsad/core/services/app_settings_service.dart';
import 'package:mirsad/core/services/scan_coordinator.dart';
import 'package:mirsad/core/services/scan_storage_service.dart';
import 'package:mirsad/core/utils/hash_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_io/io.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await ScanStorageService.instance.init();
    final sample = File('test_sample.txt');
    if (!sample.existsSync()) {
      sample.writeAsStringSync('Mirsad defensive file scanner test sample content\n');
    }
  });

  tearDownAll(() {
    final sample = File('test_sample.txt');
    if (sample.existsSync()) {
      sample.deleteSync();
    }
  });

  group('HashUtils Tests', () {
    test('computes correct SHA-256, SHA-1, MD5 for byte content', () {
      final text = 'Mirsad defensive file scanner test sample content\n';
      final bytes = utf8.encode(text);
      final hashes = HashUtils.computeBytesHashes(bytes);

      expect(hashes.sha256, equals(sha256.convert(bytes).toString()));
      expect(hashes.sha1, equals(sha1.convert(bytes).toString()));
      expect(hashes.md5, equals(md5.convert(bytes).toString()));
      expect(hashes.fileSize, equals(bytes.length));
    });

    test('formatBytes formats file sizes with appropriate units', () {
      expect(HashUtils.formatBytes(500), equals('500.00 B'));
      expect(HashUtils.formatBytes(2048), equals('2.00 KB'));
      expect(HashUtils.formatBytes(5 * 1024 * 1024), equals('5.00 MB'));
    });
  });

  group('ProviderRegistry Tests', () {
    test('contains all 7 required providers and allows toggling', () {
      final registry = ProviderRegistry.instance;
      final all = registry.getAllProviders();
      expect(all.length, greaterThanOrEqualTo(7));

      final vt = registry.getProvider('virustotal');
      expect(vt, isNotNull);
      expect(vt!.displayName, equals('VirusTotal'));
      expect(vt.requiresApiKey, isTrue);

      final metadefender = registry.getProvider('metadefender');
      expect(metadefender, isNotNull);

      final hybrid = registry.getProvider('hybrid_analysis');
      expect(hybrid, isNotNull);

      final intezer = registry.getProvider('intezer');
      expect(intezer, isNotNull);

      final filescan = registry.getProvider('filescan');
      expect(filescan, isNotNull);

      final triage = registry.getProvider('triage');
      expect(triage, isNotNull);

      final anyrun = registry.getProvider('anyrun');
      expect(anyrun, isNotNull);

      // Test toggling
      registry.setEnabled('anyrun', false);
      expect(registry.isEnabled('anyrun'), isFalse);
      registry.setEnabled('anyrun', true);
      expect(registry.isEnabled('anyrun'), isTrue);
    });
  });

  group('VirusTotalProvider Normalized Model Tests', () {
    test('submits file in hash-first mode and returns normalized ScanResult', () async {
      final vt = VirusTotalProvider();
      final tempFile = File('test_sample.txt');

      final submission = await vt.submit(tempFile, allowUpload: false);
      expect(submission.jobId, isNotEmpty);
      expect(submission.sha256, isNotNull);

      final result = await vt.getResult(submission.jobId);
      expect(result.providerId, equals('virustotal'));
      expect(result.verdict, isNotNull);
      expect(result.detectionRatio, contains('/'));
      expect(result.engineFindings, isNotEmpty);
    });
  });

  group('ScanCoordinator & History Persistence Tests', () {
    test('starts scan, calculates hashes, and persists record in history', () async {
      final coordinator = ScanCoordinator.instance;
      await coordinator.initialize();

      final tempFile = File('test_sample.txt');
      final record = await coordinator.startScan(
        file: tempFile,
        explicitFileName: 'test_sample.txt',
      );

      expect(record.fileName, equals('test_sample.txt'));
      expect(record.sha256, isNotEmpty);
      expect(record.providerResults, isNotEmpty);
      expect(coordinator.history, contains(record));

      // Test history retrieval from storage service
      final storedHistory = await ScanStorageService.instance.loadScanHistory();
      expect(storedHistory.any((r) => r.sha256 == record.sha256), isTrue);

      // Test clear history
      await coordinator.clearHistory();
      expect(coordinator.history, isEmpty);
      final clearedHistory = await ScanStorageService.instance.loadScanHistory();
      expect(clearedHistory, isEmpty);
    });
  });

  group('AppSettingsService Tests', () {
    test('handles language, theme mode, and hash-first privacy toggling', () async {
      final settings = AppSettingsService.instance;
      await settings.initialize();

      // Test theme mode
      await settings.setThemeMode(ThemeMode.light);
      expect(settings.themeMode, equals(ThemeMode.light));
      await settings.setThemeMode(ThemeMode.dark);
      expect(settings.themeMode, equals(ThemeMode.dark));

      // Test privacy mode
      await settings.setHashFirstMode(false);
      expect(settings.hashFirstMode, isFalse);
      await settings.setHashFirstMode(true);
      expect(settings.hashFirstMode, isTrue);

      // Test onboarding completion
      await settings.completeOnboarding();
      expect(settings.isOnboardingCompleted, isTrue);
    });
  });
}
