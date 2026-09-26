import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/localization/app_language.dart';
import '../../core/services/app_settings_service.dart';
import '../../core/theme/app_theme.dart';
import '../../l10n/generated/app_localizations.dart';
import 'mobile_theme_screen.dart';

class MobileLanguageScreen extends StatefulWidget {
  final bool isOnboarding;

  const MobileLanguageScreen({super.key, this.isOnboarding = false});

  @override
  State<MobileLanguageScreen> createState() => _MobileLanguageScreenState();
}

class _MobileLanguageScreenState extends State<MobileLanguageScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<AppLanguage> _filteredLanguages = AppLanguage.supportedLanguages;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim().toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredLanguages = AppLanguage.supportedLanguages;
      } else {
        _filteredLanguages = AppLanguage.supportedLanguages.where((lang) {
          return lang.nativeLanguageName.toLowerCase().contains(query) ||
              lang.code.toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final currentLang = context.watch<AppSettingsService>().currentLanguage;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.selectLanguage),
        leading: widget.isOnboarding ? null : const BackButton(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Search field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: l10n.searchLanguage,
                  prefixIcon: const Icon(Icons.search_rounded),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear_rounded),
                          onPressed: () => _searchController.clear(),
                        )
                      : null,
                ),
              ),
            ),

            // Languages list
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                itemCount: _filteredLanguages.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final lang = _filteredLanguages[index];
                  final isSelected = lang.code == currentLang.code;

                  return InkWell(
                    onTap: () async {
                      await AppSettingsService.instance.setLanguage(lang);
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppTheme.accentTeal.withOpacity(0.12)
                            : (isDark ? const Color(0xFF282B30) : const Color(0xFFFEFEFE)),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: isSelected
                              ? AppTheme.accentTeal
                              : (isDark ? const Color(0xFF383C45) : const Color(0xFFE2E4E9)),
                          width: isSelected ? 1.5 : 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    lang.nativeLanguageName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                                      color: isSelected ? AppTheme.accentTeal : null,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: isDark ? const Color(0xFF1E2024) : const Color(0xFFEFEEF1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    lang.code.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (isSelected) ...[
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.check_circle_rounded,
                              color: AppTheme.accentTeal,
                              size: 22,
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Onboarding Next Button
            if (widget.isOnboarding)
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.accentTeal,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const MobileThemeScreen(isOnboarding: true),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          l10n.btnNext,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward_rounded, size: 20),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
