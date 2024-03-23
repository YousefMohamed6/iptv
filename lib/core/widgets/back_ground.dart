import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/assets_manager.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AssetsManager.background,
          ),
        ),
      ),
      child: child,
    );
  }
}
