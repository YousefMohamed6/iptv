import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/assets_manager.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: MediaQuery.sizeOf(context).width * 0.35,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsManager.loginBackground,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
