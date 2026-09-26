import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import '../../core/models/scan_models.dart';
import '../../core/services/scan_coordinator.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/hash_utils.dart';
import '../../l10n/generated/app_localizations.dart';
import 'desktop_scan_results_screen.dart';
import 'desktop_settings_screen.dart';

class DesktopHomeScreen extends StatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  State<DesktopHomeScreen> createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
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
                  builder: (_) => DesktopScanResultsScreen(recordId: record.id),
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
      body: Row(
        children: [
          // Desktop Sidebar
          Container(
            width: 260,
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF1E2024) : const Color(0xFFE8E7EB),
              border: Border(
                right: isDark
                    ? const BorderSide(color: Color(0xFF2E323A))
                    : const BorderSide(color: Color(0xFFDCDCE0)),
              ),
            ),
            child: Material(
              type: MaterialType.transparency,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Branding Header
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/icons/app_icon.png', fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.appName,
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                              ),
                              Text(
                                l10n.studioName,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: isDark ? Colors.grey[400] : Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Divider(height: 1),
                  const SizedBox(height: 16),

                  // Primary Action: New Scan
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: double.infinity,
                      height: 46,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.accentTeal,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          elevation: 2,
                        ),
                        icon: _isPicking
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black),
                              )
                            : const Icon(Icons.shield_rounded, size: 20),
                        label: Text(
                          l10n.newScan,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        onPressed: _isPicking ? null : _pickAndScanFile,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Navigation list
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      children: [
                        ListTile(
                          leading: const Icon(Icons.history_rounded, color: AppTheme.accentTeal),
                          title: Text(l10n.scanHistory, style: const TextStyle(fontWeight: FontWeight.bold)),
                          trailing: history.isNotEmpty
                              ? Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: AppTheme.accentTeal.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '${history.length}',
                                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppTheme.accentTeal),
                                  ),
                                )
                              : null,
                          selected: true,
                          selectedTileColor: AppTheme.accentTeal.withOpacity(0.08),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                  ),

                  const Divider(height: 1),

                  // Settings link at bottom of sidebar
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ListTile(
                      leading: const Icon(Icons.settings_rounded),
                      title: Text(l10n.settings, style: const TextStyle(fontWeight: FontWeight.w600)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const DesktopSettingsScreen()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Desktop Main Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top App Bar
                Container(
                  height: 64,
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF212327) : const Color(0xFFEFEEF1),
                    border: Border(
                      bottom: isDark
                          ? const BorderSide(color: Color(0xFF2E323A))
                          : const BorderSide(color: Color(0xFFE2E4E9)),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        l10n.homeTitle,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '• ${l10n.appSubtitle}',
                        style: TextStyle(
                          fontSize: 14,
                          color: isDark ? Colors.grey[400] : Colors.grey[600],
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.upload_file_rounded, size: 18),
                        label: Text(l10n.selectFile),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isDark ? const Color(0xFF282B30) : const Color(0xFFFEFEFE),
                          foregroundColor: isDark ? Colors.white : Colors.black,
                        ),
                        onPressed: _isPicking ? null : _pickAndScanFile,
                      ),
                    ],
                  ),
                ),

                // Main body: Scan Dropzone + History Table
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(28),
                    children: [
                      // Dropzone Banner
                      InkWell(
                        onTap: _pickAndScanFile,
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
                          decoration: BoxDecoration(
                            color: isDark ? const Color(0xFF26292F) : const Color(0xFFFEFEFE),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: AppTheme.accentTeal.withOpacity(0.4),
                              style: BorderStyle.solid,
                              width: 1.5,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                decoration: BoxDecoration(
                                  color: AppTheme.accentTeal.withOpacity(0.12),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.cloud_upload_outlined,
                                  size: 32,
                                  color: AppTheme.accentTeal,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Text(
                                l10n.dragDropFile,
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                l10n.noScanHistorySubtitle,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: isDark ? Colors.grey[400] : Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 32),

                      // History Table Header
                      Row(
                        children: [
                          const Icon(Icons.history_rounded, size: 20, color: AppTheme.accentTeal),
                          const SizedBox(width: 8),
                          Text(
                            l10n.scanHistory,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),

                      // History Table / Cards
                      if (history.isEmpty)
                        Container(
                          padding: const EdgeInsets.all(40),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Icon(Icons.folder_open_rounded, size: 52, color: Colors.grey[600]),
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
                          clipBehavior: Clip.antiAlias,
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
                                  'SHA-256: ${record.sha256} • ${HashUtils.formatBytes(record.fileSize)} • ${record.scannedAt.toLocal().toString().split('.')[0]}',
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
                                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: verdictColor.withOpacity(0.15),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        record.isStillScanning
                                            ? l10n.statusScanning
                                            : _getVerdictText(context, verdict),
                                        style: TextStyle(
                                          fontSize: 12,
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
                                      builder: (_) => DesktopScanResultsScreen(recordId: record.id),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
