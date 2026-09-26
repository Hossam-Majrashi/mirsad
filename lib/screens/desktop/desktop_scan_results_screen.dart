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

class DesktopScanResultsScreen extends StatelessWidget {
  final String recordId;

  const DesktopScanResultsScreen({super.key, required this.recordId});

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
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 24),
              child: Row(
                children: [
                  const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(AppTheme.accentTeal),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    l10n.statusScanning,
                    style: const TextStyle(fontSize: 13, color: AppTheme.accentTeal),
                  ),
                ],
              ),
            ),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1080),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            children: [
              // Summary card at top
              SummaryCardWidget(
                record: record,
                onRescan: () async {
                  await coordinator.confirmUploadForCurrentFile();
                },
              ),

              // Hash-first privacy confirmation banner if in hash-only mode
              if (record.hashOnlyMode) ...[
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF282B30) : const Color(0xFFFEFEFE),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppTheme.accentTeal.withOpacity(0.35)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppTheme.accentTeal.withOpacity(0.12),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.privacy_tip_outlined, color: AppTheme.accentTeal, size: 24),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.hashOnlyMode,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              l10n.uploadConfirmDesc,
                              style: TextStyle(
                                fontSize: 12,
                                color: isDark ? Colors.grey[400] : Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.accentTeal,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        ),
                        icon: const Icon(Icons.cloud_upload_outlined, size: 18),
                        label: Text(l10n.fullUploadMode, style: const TextStyle(fontWeight: FontWeight.bold)),
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
                    ],
                  ),
                ),
              ],

              const SizedBox(height: 24),

              // Provider Cards Header
              Row(
                children: [
                  const Icon(Icons.layers_rounded, size: 20, color: AppTheme.accentTeal),
                  const SizedBox(width: 8),
                  Text(
                    l10n.settingsProviders,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    '${record.providerResults.length}/${providers.length} ${l10n.statusCompleted}',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Providers Accordion List
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
      ),
    );
  }
}
