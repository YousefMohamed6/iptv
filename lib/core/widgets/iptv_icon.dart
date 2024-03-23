import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/assets_manager.dart';

class IptvImage extends StatelessWidget {
  const IptvImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsManager.iptv,
      width: MediaQuery.sizeOf(context).width * 0.24,
    );
  }
}
