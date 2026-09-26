import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:universal_io/io.dart';

class FileHashes {
  final String sha256;
  final String sha1;
  final String md5;
  final int fileSize;

  FileHashes({
    required this.sha256,
    required this.sha1,
    required this.md5,
    required this.fileSize,
  });
}

class HashUtils {
  static Future<FileHashes> computeFileHashes(File file) async {
    final bytes = await file.readAsBytes();
    return computeBytesHashes(bytes);
  }

  static FileHashes computeBytesHashes(Uint8List bytes) {
    final s256 = sha256.convert(bytes).toString();
    final s1 = sha1.convert(bytes).toString();
    final m5 = md5.convert(bytes).toString();
    return FileHashes(
      sha256: s256,
      sha1: s1,
      md5: m5,
      fileSize: bytes.length,
    );
  }

  static String formatBytes(int bytes, {int decimals = 2}) {
    if (bytes <= 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    var i = 0;
    double size = bytes.toDouble();
    while (size >= 1024 && i < suffixes.length - 1) {
      size /= 1024;
      i++;
    }
    return '${size.toStringAsFixed(decimals)} ${suffixes[i]}';
  }
}
