import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../core/models/scan_models.dart';
import '../core/providers/scan_provider.dart';
import '../core/theme/app_theme.dart';
import '../l10n/generated/app_localizations.dart';

class ProviderCardWidget extends StatefulWidget {
  final ScanProvider provider;
  final ScanStatus status;
  final ScanResult? result;
  final bool isSizeExceeded;
  final bool initiallyExpanded;

  const ProviderCardWidget({
    super.key,
    required this.provider,
    required this.status,
    this.result,
    this.isSizeExceeded = false,
    this.initiallyExpanded = false,
  });

  @override
  State<ProviderCardWidget> createState() => _ProviderCardWidgetState();
}

class _ProviderCardWidgetState extends State<ProviderCardWidget> {
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
  }

  Future<void> _openReport(String? url) async {
    if (url == null || url.isEmpty) return;
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Color _getVerdictColor(ScanVerdict? verdict) {
    if (verdict == null) return const Color(0xFF94A3B8);
    switch (verdict) {
      case ScanVerdict.clean:
        return AppTheme.accentGreen;
      case ScanVerdict.suspicious:
        return AppTheme.accentYellow;
      case ScanVerdict.malicious:
        return AppTheme.accentRed;
      case ScanVerdict.error:
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

  String _getStatusText(BuildContext context, ScanStatus status) {
    final l10n = AppLocalizations.of(context)!;
    switch (status) {
      case ScanStatus.queued:
        return l10n.statusQueued;
      case ScanStatus.scanning:
        return l10n.statusScanning;
      case ScanStatus.completed:
        return l10n.statusCompleted;
      case ScanStatus.failed:
        return l10n.statusFailed;
      case ScanStatus.skipped:
        return l10n.fileSizeExceeded;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final res = widget.result;
    final verdict = res?.verdict ?? ScanVerdict.unknown;
    final verdictColor = _getVerdictColor(verdict);
    final isDone = widget.status == ScanStatus.completed;
    final isScanning = widget.status == ScanStatus.scanning || widget.status == ScanStatus.queued;
    final canExpand = isDone && res != null && res.engineFindings.isNotEmpty;

    return Opacity(
      opacity: widget.isSizeExceeded ? 0.6 : 1.0,
      child: Card(
        margin: const EdgeInsets.only(bottom: 12),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            // Accordion Header
            InkWell(
              onTap: canExpand
                  ? () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: Row(
                  children: [
                    // Provider Icon / Status Indicator
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: isDark ? const Color(0xFF212327) : const Color(0xFFEFEEF1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: isScanning
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.2,
                                  valueColor: AlwaysStoppedAnimation<Color>(AppTheme.accentTeal),
                                ),
                              )
                            : Icon(
                                isDone
                                    ? (verdict == ScanVerdict.malicious
                                        ? Icons.gpp_bad_rounded
                                        : (verdict == ScanVerdict.suspicious
                                            ? Icons.gpp_maybe_rounded
                                            : Icons.gpp_good_rounded))
                                    : (widget.isSizeExceeded
                                        ? Icons.info_outline_rounded
                                        : Icons.hourglass_empty_rounded),
                                color: isDone ? verdictColor : (isDark ? Colors.grey[400] : Colors.grey[600]),
                                size: 22,
                              ),
                      ),
                    ),
                    const SizedBox(width: 14),

                    // Provider Name & Subtitle
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.provider.displayName,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (widget.isSizeExceeded) ...[
                                const SizedBox(width: 6),
                                Tooltip(
                                  message: '${l10n.fileSizeExceeded} (${widget.provider.sizeLimitDescription})',
                                  child: const Icon(
                                    Icons.warning_amber_rounded,
                                    size: 16,
                                    color: AppTheme.accentYellow,
                                  ),
                                ),
                              ],
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(
                            widget.isSizeExceeded
                                ? l10n.fileSizeExceeded
                                : _getStatusText(context, widget.status),
                            style: TextStyle(
                              fontSize: 12,
                              color: isDark ? Colors.grey[400] : Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Verdict Badge & Detection Ratio
                    if (isDone && res != null) ...[
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: verdictColor.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: verdictColor.withOpacity(0.3)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              res.detectionRatio,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: verdictColor,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              _getVerdictText(context, verdict),
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: verdictColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],

                    // Expand / Collapse Chevron
                    if (canExpand) ...[
                      const SizedBox(width: 8),
                      AnimatedRotation(
                        turns: _isExpanded ? 0.5 : 0.0,
                        duration: const Duration(milliseconds: 200),
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: isDark ? Colors.grey[400] : Colors.grey[600],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),

            // Animated Accordion Expansion
            AnimatedSize(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              child: _isExpanded && res != null
                  ? Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isDark ? const Color(0xFF24272D) : const Color(0xFFF8F9FA),
                        border: Border(
                          top: BorderSide(
                            color: isDark ? const Color(0xFF383C45) : const Color(0xFFE2E4E9),
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Table Header
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    l10n.engineName,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    l10n.engineCategory,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    l10n.engineResult,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(height: 1),

                          // Engine findings list
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: res.engineFindings.length,
                            separatorBuilder: (_, __) => const Divider(height: 1, thickness: 0.5),
                            itemBuilder: (context, index) {
                              final f = res.engineFindings[index];
                              final isMal = f.category == 'malicious' || f.result.toLowerCase().contains('trojan');
                              final isSusp = f.category == 'suspicious';
                              final itemColor = isMal
                                  ? AppTheme.accentRed
                                  : (isSusp ? AppTheme.accentYellow : (isDark ? Colors.grey[300] : Colors.grey[800]));

                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        f.engineName,
                                        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        f.category,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: itemColor,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        f.result,
                                        style: TextStyle(fontSize: 12, color: itemColor),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),

                          const SizedBox(height: 14),

                          // View full report link
                          if (res.permalink != null && res.permalink!.isNotEmpty)
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: TextButton.icon(
                                icon: const Icon(Icons.open_in_new_rounded, size: 16),
                                label: Text(l10n.viewFullReport),
                                style: TextButton.styleFrom(
                                  foregroundColor: AppTheme.accentTeal,
                                  textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                                ),
                                onPressed: () => _openReport(res.permalink),
                              ),
                            ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
