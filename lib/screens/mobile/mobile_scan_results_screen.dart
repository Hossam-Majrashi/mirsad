import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/models/scanned_file_record.dart';
import '../../core/models/scan_models.dart';
import '../../core/providers/provider_registry.dart';
import '../../core/services/scan_coordinator.dart';
import '../../core/theme/app_theme.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../widgets/hash_privacy_dialog.dart';
import '../../widgets/provider_card_widget.dart';
import '../../widgets/summary_card_widget.dart';

class MobileScanResultsScreen extends StatelessWidget {
  final String recordId;

  const MobileScanResultsScreen({super.key, required this.recordId});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final coordinator = context.watch<ScanCoordinator>();

    final record = coordinator.history.firstWhere(
      (r) => r.id == recordId,
      orElse: () => coordinator.currentRecord ?? ScannedFileRecord(
        id: recordId,
        fileName: l10n.verdictUnknown,
        fileSize: 0,
        sha256: '',
        sha1: '',
        md5: '',
        scannedAt: DateTime.now(),
      ),
    );

    final providers = ProviderRegistry.instance.getEnabledProviders();

    return Scaffold(
      appBar: AppBar(
        title: Text(record.fileName),
        leading: const BackButton(),
        actions: [
          if (record.isStillScanning)
            const Padding(
              padding: EdgeInsetsDirectional.only(end: 16),
              child: Center(
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(AppTheme.accentTeal),
                  ),
                ),
              ),
            ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Top Summary Card
            SummaryCardWidget(
              record: record,
              onRescan: () async {
                final filePath = record.filePath;
                if (filePath != null) {
                  await coordinator.confirmUploadForCurrentFile();
                }
              },
            ),

            // Hash-Only notice & Upload confirmation banner if in hash-only mode
            if (record.hashOnlyMode) ...[
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xFF282B30) : const Color(0xFFFEFEFE),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppTheme.accentTeal.withOpacity(0.3)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.privacy_tip_outlined, color: AppTheme.accentTeal, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          l10n.hashOnlyMode,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.uploadConfirmDesc,
                      style: TextStyle(
                        fontSize: 12,
                        color: isDark ? Colors.grey[400] : Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.accentTeal,
                          foregroundColor: Colors.black,
                          elevation: 1,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        icon: const Icon(Icons.cloud_upload_outlined, size: 18),
                        label: Text(
                          l10n.fullUploadMode,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                        onPressed: () async {
                          final decision = await HashPrivacyDialog.show(
                            context,
                            fileName: record.fileName,
                          );
                          if (decision == UploadDecision.fullUpload) {
                            await coordinator.confirmUploadForCurrentFile();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],

            const SizedBox(height: 20),

            // Provider Accordion Cards Section Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              child: Row(
                children: [
                  const Icon(Icons.layers_rounded, size: 18, color: AppTheme.accentTeal),
                  const SizedBox(width: 8),
                  Text(
                    l10n.settingsProviders,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    '${record.providerResults.length}/${providers.length}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // Accordion Cards for each provider
            ...providers.map((provider) {
              final status = record.providerStatuses[provider.id] ?? ScanStatus.queued;
              final result = record.providerResults[provider.id];
              final isExceeded = !provider.isFileSizeSupported(record.fileSize);

              return ProviderCardWidget(
                key: ValueKey(provider.id),
                provider: provider,
                status: status,
                result: result,
                isSizeExceeded: isExceeded,
                initiallyExpanded: false,
              );
            }),
          ],
        ),
      ),
    );
  }
}
