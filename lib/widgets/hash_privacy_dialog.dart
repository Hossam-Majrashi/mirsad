import 'package:flutter/material.dart';
import '../core/theme/app_theme.dart';
import '../l10n/generated/app_localizations.dart';

enum UploadDecision {
  hashOnly,
  fullUpload,
  cancel,
}

class HashPrivacyDialog extends StatelessWidget {
  final String fileName;

  const HashPrivacyDialog({
    super.key,
    required this.fileName,
  });

  static Future<UploadDecision?> show(BuildContext context, {required String fileName}) {
    return showDialog<UploadDecision>(
      context: context,
      barrierDismissible: false,
      builder: (context) => HashPrivacyDialog(fileName: fileName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppTheme.accentYellow.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.privacy_tip_rounded,
              color: AppTheme.accentYellow,
              size: 24,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              l10n.uploadConfirmTitle,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.uploadConfirmDesc,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: isDark ? const Color(0xFFCBD5E1) : const Color(0xFF334155),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF212327) : const Color(0xFFF1F5F9),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isDark ? const Color(0xFF383C45) : const Color(0xFFE2E8F0),
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.attach_file_rounded, size: 20, color: AppTheme.accentTeal),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      fileName,
                      style: const TextStyle(
                        fontFamily: 'monospace',
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(UploadDecision.cancel),
          child: Text(l10n.btnCancel),
        ),
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop(UploadDecision.hashOnly),
          child: Text(l10n.hashOnlyMode),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.accentTeal,
            foregroundColor: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(UploadDecision.fullUpload),
          child: Text(
            l10n.fullUploadMode,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
