import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import '../../core/models/scan_models.dart';
import '../../core/services/scan_coordinator.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/hash_utils.dart';
import '../../l10n/generated/app_localizations.dart';
import 'mobile_scan_results_screen.dart';
import 'mobile_settings_screen.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
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
        if (path != null) {
          final file = File(path);
          if (await file.exists()) {
            final record = await ScanCoordinator.instance.startScan(
              file: file,
              explicitFileName: result.files.single.name,
            );
            if (mounted) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => MobileScanResultsScreen(recordId: record.id),
                ),
              );
            }
          }
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
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/icons/app_icon.png', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 10),
            Text(l10n.homeTitle, style: const TextStyle(fontWeight: FontWeight.w900)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            tooltip: l10n.settings,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const MobileSettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Prominent "New Scan" Action Banner
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: isDark
                        ? [const Color(0xFF1E3A3A), const Color(0xFF282B30)]
                        : [const Color(0xFFE6FFFA), const Color(0xFFFEFEFE)],
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppTheme.accentTeal.withOpacity(0.3),
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 16,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: AppTheme.accentTeal.withOpacity(0.18),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.shield_outlined,
                        size: 38,
                        color: AppTheme.accentTeal,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      l10n.newScan,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      l10n.dragDropFile,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: isDark ? Colors.grey[300] : Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.accentTeal,
                          foregroundColor: Colors.black,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: _isPicking
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black),
                              )
                            : const Icon(Icons.file_upload_outlined, size: 22),
                        label: Text(
                          l10n.selectFile,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        onPressed: _isPicking ? null : _pickAndScanFile,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // History Section Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                children: [
                  const Icon(Icons.history_rounded, size: 20, color: AppTheme.accentTeal),
                  const SizedBox(width: 8),
                  Text(
                    l10n.scanHistory,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  if (history.isNotEmpty)
                    Text(
                      '${history.length}',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.grey[400] : Colors.grey[600],
                      ),
                    ),
                ],
              ),
            ),

            // History List
            Expanded(
              child: history.isEmpty
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.folder_open_rounded,
                              size: 56,
                              color: isDark ? Colors.grey[700] : Colors.grey[400],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              l10n.noScanHistory,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isDark ? Colors.grey[400] : Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              l10n.noScanHistorySubtitle,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                color: isDark ? Colors.grey[500] : Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      itemCount: history.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        final record = history[index];
                        final verdict = record.aggregatedVerdict;
                        final verdictColor = _getVerdictColor(verdict);

                        return Card(
                          margin: EdgeInsets.zero,
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            leading: Container(
                              width: 42,
                              height: 42,
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
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 4),
                                Text(
                                  '${HashUtils.formatBytes(record.fileSize)} • ${record.scannedAt.toLocal().toString().split('.')[0]}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: isDark ? Colors.grey[400] : Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                            trailing: Container(
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
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => MobileScanResultsScreen(recordId: record.id),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
