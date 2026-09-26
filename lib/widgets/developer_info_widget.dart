import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../l10n/generated/app_localizations.dart';

class DeveloperInfoWidget extends StatelessWidget {
  const DeveloperInfoWidget({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Widget _buildContactItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: isDark ? const Color(0xFF282B30) : const Color(0xFFFEFEFE),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isDark ? const Color(0xFF383C45) : const Color(0xFFE2E4E9),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF212327) : const Color(0xFFEFEEF1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, size: 20, color: const Color(0xFF00BFA5)),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 12,
                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: isDark ? const Color(0xFFE2E8F0) : const Color(0xFF1E293B),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.open_in_new_rounded,
              size: 16,
              color: isDark ? Colors.grey[500] : Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final emailLabel = l10n?.email ?? 'البريد الإلكتروني';
    final websiteLabel = l10n?.website ?? 'الموقع الإلكتروني';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'حسام حسن مجرشي',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Color(0xFFCDCCCA),
          ),
        ),
        const SizedBox(height: 16),
        _buildContactItem(
          context,
          icon: Icons.alternate_email_rounded,
          label: emailLabel,
          value: 'Hossam.Majrashi@gmail.com',
          onTap: () => _launchUrl('mailto:Hossam.Majrashi@gmail.com'),
        ),
        const SizedBox(height: 16),
        _buildContactItem(
          context,
          icon: Icons.public_rounded,
          label: websiteLabel,
          value: 'hossam-majrashi.github.io/Works/',
          onTap: () => _launchUrl(
            'https://hossam-majrashi.github.io/Works/',
          ),
        ),
      ],
    );
  }
}
