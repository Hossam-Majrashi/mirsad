import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import '../../core/models/scan_models.dart';
import '../../core/services/scan_coordinator.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/hash_utils.dart';
import '../../l10n/generated/app_localizations.dart';
import 'web_scan_results_screen.dart';
import 'web_settings_screen.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({super.key});

  @override
  State<WebHomeScreen> createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  bool _isPicking = false;

  Future<void> _pickAndScanFile() async {
    if (_isPicking) return;
    setState(() => _isPicking = true);

    try {
      final result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.any,
      );

      if (result != null && result.files.isNotEmpty) {
        final path = result.files.single.path;
        final file = File(path ?? result.files.single.name);

        final record = await ScanCoordinator.instance.startScan(
          file: file,
          explicitFileName: result.files.single.name,
        );
        if (mounted) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => WebScanResultsScreen(recordId: record.id),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        final l10n = AppLocalizations.of(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${l10n?.verdictError ?? 'Error'}: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isPicking = false);
    }
  }

  Color _getVerdictColor(ScanVerdict verdict) {
    switch (verdict) {
      case ScanVerdict.clean:
        return AppTheme.accentGreen;
      case ScanVerdict.suspicious:
        return AppTheme.accentYellow;
      case ScanVerdict.malicious:
        return AppTheme.accentRed;
      default:
        return const Color(0xFF94A3B8);
    }
  }

  String _getVerdictText(BuildContext context, ScanVerdict verdict) {
    final l10n = AppLocalizations.of(context)!;
    switch (verdict) {
      case ScanVerdict.clean:
        return l10n.verdictClean;
      case ScanVerdict.suspicious:
        return l10n.verdictSuspicious;
      case ScanVerdict.malicious:
        return l10n.verdictMalicious;
      case ScanVerdict.error:
        return l10n.verdictError;
      case ScanVerdict.unknown:
        return l10n.verdictUnknown;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final coordinator = context.watch<ScanCoordinator>();
    final history = coordinator.history;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/icons/app_icon.png', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 12),
            Text(l10n.appName, style: const TextStyle(fontWeight: FontWeight.w900)),
            const SizedBox(width: 8),
            Text(
              '|  ${l10n.appSubtitle}',
              style: TextStyle(
                fontSize: 13,
                color: isDark ? Colors.grey[400] : Colors.grey[600],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            tooltip: l10n.settings,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const WebSettingsScreen()),
              );
            },
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 960),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            children: [
              // Large Web Dropzone Banner
              InkWell(
                onTap: _pickAndScanFile,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF26292F) : const Color(0xFFFEFEFE),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppTheme.accentTeal.withOpacity(0.4),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 18,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          color: AppTheme.accentTeal.withOpacity(0.12),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.cloud_upload_outlined,
                          size: 38,
                          color: AppTheme.accentTeal,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        l10n.newScan,
                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        l10n.dragDropFile,
                        style: TextStyle(
                          fontSize: 14,
                          color: isDark ? Colors.grey[300] : Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 44,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.accentTeal,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          ),
                          icon: _isPicking
                              ? const SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black),
                                )
                              : const Icon(Icons.file_open_outlined, size: 20),
                          label: Text(
                            l10n.selectFile,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          onPressed: _isPicking ? null : _pickAndScanFile,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // Scan History Header
              Row(
                children: [
                  const Icon(Icons.history_rounded, size: 20, color: AppTheme.accentTeal),
                  const SizedBox(width: 8),
                  Text(
                    l10n.scanHistory,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  if (history.isNotEmpty)
                    Text(
                      '${history.length} scans',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.grey[400] : Colors.grey[600],
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 14),

              // History list for Web
              if (history.isEmpty)
                Container(
                  padding: const EdgeInsets.all(40),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Icon(Icons.folder_open_rounded, size: 48, color: Colors.grey[600]),
                      const SizedBox(height: 12),
                      Text(
                        l10n.noScanHistory,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        l10n.noScanHistorySubtitle,
                        style: TextStyle(color: Colors.grey[500], fontSize: 13),
                      ),
                    ],
                  ),
                )
              else
                Card(
                  margin: EdgeInsets.zero,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: history.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final record = history[index];
                      final verdict = record.aggregatedVerdict;
                      final verdictColor = _getVerdictColor(verdict);

                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: verdictColor.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            record.isStillScanning
                                ? Icons.radar_rounded
                                : (verdict == ScanVerdict.malicious
                                    ? Icons.gpp_bad_rounded
                                    : (verdict == ScanVerdict.suspicious
                                        ? Icons.gpp_maybe_rounded
                                        : Icons.gpp_good_rounded)),
                            color: verdictColor,
                            size: 22,
                          ),
                        ),
                        title: Text(
                          record.fileName,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        subtitle: Text(
                          '${HashUtils.formatBytes(record.fileSize)} • SHA-256: ${record.sha256}',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 12,
                            color: isDark ? Colors.grey[400] : Colors.grey[600],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                color: verdictColor.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                record.isStillScanning
                                    ? l10n.statusScanning
                                    : _getVerdictText(context, verdict),
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: verdictColor,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.chevron_right_rounded),
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => WebScanResultsScreen(recordId: record.id),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
