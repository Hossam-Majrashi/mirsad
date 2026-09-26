import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/providers/provider_registry.dart';
import '../../core/services/app_settings_service.dart';
import '../../core/services/scan_coordinator.dart';
import '../../core/theme/app_theme.dart';
import '../../l10n/generated/app_localizations.dart';
import 'desktop_language_screen.dart';
import 'desktop_theme_screen.dart';

class DesktopSettingsScreen extends StatelessWidget {
  const DesktopSettingsScreen({super.key});

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
    final l10n = AppLocalizations.of(context)!;
    final settings = context.watch<AppSettingsService>();
    final coordinator = context.watch<ScanCoordinator>();
    final allProviders = ProviderRegistry.instance.getAllProviders();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
        leading: const BackButton(),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            children: [
              // Appearance & Language Cards
              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.selectTheme,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(Icons.language_rounded, color: AppTheme.accentTeal),
                              title: Text(l10n.selectLanguage),
                              subtitle: Text(settings.currentLanguage.nativeLanguageName),
                              trailing: const Icon(Icons.chevron_right_rounded),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => const DesktopLanguageScreen()),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(Icons.palette_rounded, color: AppTheme.accentTeal),
                              title: Text(l10n.selectTheme),
                              subtitle: Text(settings.themeMode == ThemeMode.dark
                                  ? l10n.themeDark
                                  : (settings.themeMode == ThemeMode.light ? l10n.themeLight : l10n.themeSystem)),
                              trailing: const Icon(Icons.chevron_right_rounded),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => const DesktopThemeScreen()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Privacy & Hash-first
              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SwitchListTile(
                    secondary: const Icon(Icons.security_rounded, color: AppTheme.accentTeal),
                    title: Text(l10n.hashFirstTitle),
                    subtitle: Text(l10n.hashFirstDesc),
                    value: settings.hashFirstMode,
                    activeColor: AppTheme.accentTeal,
                    onChanged: (val) {
                      settings.setHashFirstMode(val);
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Providers Section
              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.settingsProviders,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 16,
                        runSpacing: 12,
                        children: allProviders.map((provider) {
                          final isEnabled = ProviderRegistry.instance.isEnabled(provider.id);
                          return SizedBox(
                            width: 380,
                            child: CheckboxListTile(
                              value: isEnabled,
                              activeColor: AppTheme.accentTeal,
                              checkColor: Colors.black,
                              title: Text(provider.displayName, style: const TextStyle(fontWeight: FontWeight.w600)),
                              subtitle: Text('${l10n.fileSize}: ${provider.sizeLimitDescription}'),
                              onChanged: (val) {
                                coordinator.toggleProvider(provider.id, val ?? true);
                              },
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Clear History
              Card(
                margin: EdgeInsets.zero,
                child: ListTile(
                  leading: const Icon(Icons.delete_outline_rounded, color: AppTheme.accentRed),
                  title: Text(
                    l10n.clearHistory,
                    style: const TextStyle(color: AppTheme.accentRed, fontWeight: FontWeight.w600),
                  ),
                  onTap: () async {
                    final confirm = await showDialog<bool>(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text(l10n.clearHistory),
                        content: Text(l10n.clearHistoryConfirm),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(ctx).pop(false),
                            child: Text(l10n.btnCancel),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.accentRed,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () => Navigator.of(ctx).pop(true),
                            child: Text(l10n.btnConfirm),
                          ),
                        ],
                      ),
                    );

                    if (confirm == true) {
                      await coordinator.clearHistory();
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.historyCleared)),
                        );
                      }
                    }
                  },
                ),
              ),

              const SizedBox(height: 36),

              // --- Section 12: Developer Info (exact specification block) ---
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                child: Text(
                  l10n.devSectionTitle,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12),

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
                label: l10n.email,
                value: 'Hossam.Majrashi@gmail.com',
                onTap: () => _launchUrl('mailto:Hossam.Majrashi@gmail.com'),
              ),

              const SizedBox(height: 16),

              _buildContactItem(
                context,
                icon: Icons.public_rounded,
                label: l10n.website,
                value: 'hossam-majrashi.github.io/Works/',
                onTap: () => _launchUrl(
                  'https://hossam-majrashi.github.io/Works/',
                ),
              ),

              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
