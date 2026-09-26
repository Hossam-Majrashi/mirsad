import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import '../core/models/scanned_file_record.dart';
import '../core/models/scan_models.dart';
import '../core/theme/app_theme.dart';
import '../core/utils/hash_utils.dart';
import '../l10n/generated/app_localizations.dart';

class SummaryCardWidget extends StatelessWidget {
  final ScannedFileRecord record;
  final VoidCallback? onRescan;

  const SummaryCardWidget({
    super.key,
    required this.record,
    this.onRescan,
  });

  void _copyToClipboard(BuildContext context, String text, String label) {
    final l10n = AppLocalizations.of(context)!;
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$label: ${l10n.copiedToClipboard}'),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _shareReport(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final buffer = StringBuffer();
    buffer.writeln('${l10n.appName} — ${l10n.summaryTitle}');
    buffer.writeln('------------------------------');
    buffer.writeln('${l10n.fileName}: ${record.fileName}');
    buffer.writeln('${l10n.fileSize}: ${HashUtils.formatBytes(record.fileSize)}');
    buffer.writeln('${l10n.hashSha256}: ${record.sha256}');
    buffer.writeln('${l10n.hashSha1}: ${record.sha1}');
    buffer.writeln('${l10n.hashMd5}: ${record.md5}');
    buffer.writeln('${l10n.aggregatedVerdict}: ${_getVerdictText(context, record.aggregatedVerdict)}');
    buffer.writeln(l10n.flaggedCount(record.flaggedCount, record.totalCompletedCount));
    buffer.writeln('------------------------------');
    record.providerResults.forEach((provider, res) {
      buffer.writeln('$provider: ${_getVerdictText(context, res.verdict)} (${res.detectionRatio})');
    });

    Share.share(buffer.toString(), subject: '${l10n.appName} Scan: ${record.fileName}');
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
      default:
        return l10n.verdictUnknown;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final verdict = record.aggregatedVerdict;
    final verdictColor = _getVerdictColor(verdict);

    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row: File Name + Actions
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF212327) : const Color(0xFFEFEEF1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.security_rounded,
                    size: 28,
                    color: Color(0xFF00BFA5),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        record.fileName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${HashUtils.formatBytes(record.fileSize)} • ${record.scannedAt.toLocal().toString().split('.')[0]}',
                        style: TextStyle(
                          fontSize: 13,
                          color: isDark ? Colors.grey[400] : Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                // Action Buttons: Share & Rescan
                IconButton(
                  icon: const Icon(Icons.share_rounded, size: 20),
                  tooltip: l10n.shareReport,
                  onPressed: () => _shareReport(context),
                ),
                if (onRescan != null)
                  IconButton(
                    icon: const Icon(Icons.refresh_rounded, size: 20),
                    tooltip: l10n.btnRescan,
                    onPressed: onRescan,
                  ),
              ],
            ),

            const SizedBox(height: 18),
            const Divider(),
            const SizedBox(height: 14),

            // Aggregated Verdict Banner
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: verdictColor.withOpacity(0.12),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: verdictColor.withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  Icon(
                    verdict == ScanVerdict.malicious
                        ? Icons.gpp_bad_rounded
                        : (verdict == ScanVerdict.suspicious
                            ? Icons.gpp_maybe_rounded
                            : Icons.gpp_good_rounded),
                    color: verdictColor,
                    size: 26,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${l10n.aggregatedVerdict}: ${_getVerdictText(context, verdict)}',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: verdictColor,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          l10n.flaggedCount(record.flaggedCount, record.totalCompletedCount),
                          style: TextStyle(
                            fontSize: 13,
                            color: isDark ? Colors.grey[300] : Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Hashes Details
            _buildHashRow(context, 'SHA-256', record.sha256, isDark),
            const SizedBox(height: 8),
            _buildHashRow(context, 'SHA-1', record.sha1, isDark),
            const SizedBox(height: 8),
            _buildHashRow(context, 'MD5', record.md5, isDark),
          ],
        ),
      ),
    );
  }

  Widget _buildHashRow(BuildContext context, String label, String value, bool isDark) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF212327) : const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: isDark ? Colors.grey[400] : Colors.grey[600],
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 12,
                color: isDark ? const Color(0xFFE2E8F0) : const Color(0xFF1E293B),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.copy_rounded, size: 16),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            tooltip: '${AppLocalizations.of(context)!.copyHash} $label',
            onPressed: () => _copyToClipboard(context, value, label),
          ),
        ],
      ),
    );
  }
}
