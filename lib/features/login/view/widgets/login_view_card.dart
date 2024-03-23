import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/features/login/view/widgets/login_card.dart';

class LoginViewCard extends StatelessWidget {
  const LoginViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.all(16),
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
        child: const LoginCard(),
      ),
    );
  }
}
