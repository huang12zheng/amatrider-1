import 'package:url_launcher/url_launcher.dart';

abstract class UrlLauncher {
  static Future<bool> url(String? url) async {
    final link = '$url';
    final launchable = await canLaunch('$link');
    if (launchable) await launch('$link');
    return launchable;
  }

  static Future<bool> tel(String? url) async {
    final link = 'tel:$url';
    final launchable = await canLaunch('$link');
    if (launchable) await launch('$link');
    return launchable;
  }

  static Future<bool> email(String? url) async {
    final link = 'mailto:$url';
    final launchable = await canLaunch('$link');
    if (launchable) await launch('$link');
    return launchable;
  }
}
