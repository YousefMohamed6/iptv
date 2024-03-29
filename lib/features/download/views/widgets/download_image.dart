import 'package:flutter/widgets.dart';
import 'package:iptv/core/uitls/assets_manager.dart';

class DownloadImage extends StatelessWidget {
  const DownloadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Image.asset(
        AssetsManager.download,
      ),
    );
  }
}