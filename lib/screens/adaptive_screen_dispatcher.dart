import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';
import 'desktop/desktop_home_screen.dart';
import 'desktop/desktop_scan_results_screen.dart';
import 'desktop/desktop_splash_screen.dart';
import 'mobile/mobile_home_screen.dart';
import 'mobile/mobile_scan_results_screen.dart';
import 'mobile/mobile_splash_screen.dart';
import 'web/web_home_screen.dart';
import 'web/web_scan_results_screen.dart';
import 'web/web_splash_screen.dart';

enum DeviceClass {
  mobile,
  desktop,
  web;

  static DeviceClass current(BuildContext context) {
    if (kIsWeb) return DeviceClass.web;
    final width = MediaQuery.of(context).size.width;
    if (Platform.isAndroid || Platform.isIOS || width < 650) {
      return DeviceClass.mobile;
    }
    return DeviceClass.desktop;
  }
}

class AdaptiveSplashScreen extends StatelessWidget {
  const AdaptiveSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final device = DeviceClass.current(context);
    switch (device) {
      case DeviceClass.web:
        return const WebSplashScreen();
      case DeviceClass.desktop:
        return const DesktopSplashScreen();
      case DeviceClass.mobile:
        return const MobileSplashScreen();
    }
  }
}

class AdaptiveHomeScreen extends StatelessWidget {
  const AdaptiveHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final device = DeviceClass.current(context);
    switch (device) {
      case DeviceClass.web:
        return const WebHomeScreen();
      case DeviceClass.desktop:
        return const DesktopHomeScreen();
      case DeviceClass.mobile:
        return const MobileHomeScreen();
    }
  }
}

class AdaptiveScanResultsScreen extends StatelessWidget {
  final String recordId;

  const AdaptiveScanResultsScreen({super.key, required this.recordId});

  @override
  Widget build(BuildContext context) {
    final device = DeviceClass.current(context);
    switch (device) {
      case DeviceClass.web:
        return WebScanResultsScreen(recordId: recordId);
      case DeviceClass.desktop:
        return DesktopScanResultsScreen(recordId: recordId);
      case DeviceClass.mobile:
        return MobileScanResultsScreen(recordId: recordId);
    }
  }
}
