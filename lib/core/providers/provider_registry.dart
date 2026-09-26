import 'anyrun_provider.dart';
import 'filescan_provider.dart';
import 'hybrid_analysis_provider.dart';
import 'intezer_provider.dart';
import 'metadefender_provider.dart';
import 'scan_provider.dart';
import 'triage_provider.dart';
import 'virustotal_provider.dart';

class ProviderRegistry {
  static final ProviderRegistry instance = ProviderRegistry._();
  ProviderRegistry._() {
    _registerDefaultProviders();
  }

  final Map<String, ScanProvider> _providers = {};
  final Set<String> _enabledProviderIds = {};

  void _registerDefaultProviders() {
    register(VirusTotalProvider(), enabledByDefault: true);
    register(MetaDefenderProvider(), enabledByDefault: true);
    register(HybridAnalysisProvider(), enabledByDefault: true);
    register(IntezerProvider(), enabledByDefault: true);
    register(FilescanProvider(), enabledByDefault: true);
    register(TriageProvider(), enabledByDefault: true);
    register(AnyRunProvider(), enabledByDefault: true);
  }

  void register(ScanProvider provider, {bool enabledByDefault = true}) {
    _providers[provider.id] = provider;
    if (enabledByDefault) {
      _enabledProviderIds.add(provider.id);
    }
  }

  List<ScanProvider> getAllProviders() => _providers.values.toList();

  List<ScanProvider> getEnabledProviders() =>
      _providers.values.where((p) => _enabledProviderIds.contains(p.id)).toList();

  ScanProvider? getProvider(String id) => _providers[id];

  bool isEnabled(String id) => _enabledProviderIds.contains(id);

  void setEnabled(String id, bool enabled) {
    if (enabled) {
      _enabledProviderIds.add(id);
    } else {
      _enabledProviderIds.remove(id);
    }
  }

  void loadEnabledStates(List<String> enabledIds) {
    if (enabledIds.isEmpty) return;
    _enabledProviderIds.clear();
    _enabledProviderIds.addAll(enabledIds);
  }

  List<String> getEnabledIds() => _enabledProviderIds.toList();
}
