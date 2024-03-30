import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/assets_manager.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key, this.width, this.height});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsManager.iptv,
      width: width,
      height: height,
    );
  }
}
