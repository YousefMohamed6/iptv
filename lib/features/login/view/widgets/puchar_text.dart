import 'package:flutter/material.dart';
import 'package:iptv/core/services/url_launcher.dart';
import 'package:iptv/core/uitls/styles_manager.dart';

class PachurLink extends StatelessWidget {
  const PachurLink({super.key});

  @override
  Widget build(BuildContext context) {
    String url = "www.b-in.net";
    return TextButton(
      onPressed: () async {
        await UrlLauncher.launch(url: url);
      },
      child: const Text(
        "www.b-in.net",
        style: StyleManager.textStyle16,
        textAlign: TextAlign.center,
      ),
    );
  }
}
