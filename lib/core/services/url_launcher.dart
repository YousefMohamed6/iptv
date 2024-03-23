import 'package:url_launcher/url_launcher.dart';

abstract class UrlLauncher {
  static Future<void> launch({required String url}) async {
    final Uri urls = Uri.parse(url);
    if (await canLaunchUrl(urls)) {
      await launchUrl(urls);
    }
  }
}
