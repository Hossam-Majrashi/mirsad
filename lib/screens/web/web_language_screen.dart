import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/localization/app_language.dart';
import '../../core/services/app_settings_service.dart';
import '../../core/theme/app_theme.dart';
import '../../l10n/generated/app_localizations.dart';
import 'web_theme_screen.dart';

class WebLanguageScreen extends StatefulWidget {
  final bool isOnboarding;

  const WebLanguageScreen({super.key, this.isOnboarding = false});

  @override
  State<WebLanguageScreen> createState() => _WebLanguageScreenState();
}

class _MobileLanguageItem extends StatelessWidget {
  final AppLanguage lang;
  final bool isSelected;
  final VoidCallback onTap;

  const _MobileLanguageItem({
    required this.lang,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                        fontSize: 15,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
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
                size: 20,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _WebLanguageScreenState extends State<WebLanguageScreen> {
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
    final currentLang = context.watch<AppSettingsService>().currentLanguage;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.selectLanguage),
        leading: widget.isOnboarding ? null : const BackButton(),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              children: [
                TextField(
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
                const SizedBox(height: 16),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 380,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3.6,
                    ),
                    itemCount: _filteredLanguages.length,
                    itemBuilder: (context, index) {
                      final lang = _filteredLanguages[index];
                      final isSelected = lang.code == currentLang.code;
                      return _MobileLanguageItem(
                        lang: lang,
                        isSelected: isSelected,
                        onTap: () async {
                          await AppSettingsService.instance.setLanguage(lang);
                        },
                      );
                    },
                  ),
                ),
                if (widget.isOnboarding)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: SizedBox(
                      width: 240,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.accentTeal,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const WebThemeScreen(isOnboarding: true),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              l10n.btnNext,
                              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.arrow_forward_rounded, size: 18),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
