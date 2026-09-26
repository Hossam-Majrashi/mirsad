import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:universal_io/io.dart';

class IntentHandler {
  static const MethodChannel _channel = MethodChannel('com.h.mirsad/share_intent');

  static Future<String?> getIncomingFile(List<String> cliArgs) async {
    // 1. Check Desktop CLI arguments first
    if (!kIsWeb && (Platform.isLinux || Platform.isWindows || Platform.isMacOS)) {
      for (final arg in cliArgs) {
        if (!arg.startsWith('-') && arg.trim().isNotEmpty) {
          final clean = arg.trim();
          final file = File(clean);
          if (file.existsSync()) {
            return clean;
          }
          // Even if not existing on disk or permission-checked later, return if looks like path
          if (clean.contains('/') || clean.contains('\\')) {
            return clean;
          }
        }
      }
    }

    // 2. Check Android/iOS platform channel for incoming share intent
    if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      try {
        final String? filePath = await _channel.invokeMethod<String>('getSharedFilePath');
        if (filePath != null && filePath.isNotEmpty) {
          return filePath;
        }
      } catch (_) {}
    }

    return null;
  }
}
