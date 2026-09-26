import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/services/app_settings_service.dart';
import '../../core/theme/app_theme.dart';
import '../../l10n/generated/app_localizations.dart';
import 'mobile_home_screen.dart';

class MobileThemeScreen extends StatelessWidget {
  final bool isOnboarding;

  const MobileThemeScreen({super.key, this.isOnboarding = false});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final currentTheme = context.watch<AppSettingsService>().themeMode;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.selectTheme),
        leading: isOnboarding ? null : const BackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.chooseThemeSubtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: isDark ? Colors.grey[400] : Colors.grey[600],
                ),
              ),
              const SizedBox(height: 24),

              // Dark Theme Card
              _buildThemeCard(
                context,
                title: l10n.themeDark,
                subtitle: l10n.themeDarkSubtitle,
                isSelected: currentTheme == ThemeMode.dark,
                backgroundColor: AppTheme.darkBackground,
                cardColor: AppTheme.darkCard,
                iconColor: const Color(0xFF00BFA5),
                textColor: Colors.white,
                onTap: () => AppSettingsService.instance.setThemeMode(ThemeMode.dark),
              ),

              const SizedBox(height: 16),

              // Light Theme Card
              _buildThemeCard(
                context,
                title: l10n.themeLight,
                subtitle: l10n.themeLightSubtitle,
                isSelected: currentTheme == ThemeMode.light,
                backgroundColor: AppTheme.lightBackground,
                cardColor: AppTheme.lightCard,
                iconColor: const Color(0xFF0F766E),
                textColor: const Color(0xFF0F172A),
                onTap: () => AppSettingsService.instance.setThemeMode(ThemeMode.light),
              ),

              const SizedBox(height: 16),

              // System Default Card
              _buildThemeCard(
                context,
                title: l10n.themeSystem,
                subtitle: l10n.themeSystemSubtitle,
                isSelected: currentTheme == ThemeMode.system,
                backgroundColor: isDark ? AppTheme.darkBackground : AppTheme.lightBackground,
                cardColor: isDark ? AppTheme.darkCard : AppTheme.lightCard,
                iconColor: AppTheme.accentTeal,
                textColor: isDark ? Colors.white : Colors.black,
                onTap: () => AppSettingsService.instance.setThemeMode(ThemeMode.system),
              ),

              const Spacer(),

              // Next / Done Button
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.accentTeal,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 3,
                  ),
                  onPressed: () async {
                    if (isOnboarding) {
                      await AppSettingsService.instance.completeOnboarding();
                      if (context.mounted) {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => const MobileHomeScreen()),
                          (route) => false,
                        );
                      }
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isOnboarding ? l10n.splashGetStarted : l10n.btnDone,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_forward_rounded, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThemeCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required bool isSelected,
    required Color backgroundColor,
    required Color cardColor,
    required Color iconColor,
    required Color textColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? AppTheme.accentTeal : Colors.grey.withOpacity(0.25),
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: AppTheme.accentTeal.withOpacity(0.15),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
              ),
              child: Icon(Icons.palette_rounded, color: iconColor, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle_rounded,
                color: AppTheme.accentTeal,
                size: 24,
              ),
          ],
        ),
      ),
    );
  }
}
