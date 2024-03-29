import 'package:flutter/material.dart';
import 'package:iptv/features/login/view/widgets/login/login_background.dart';
import 'package:iptv/features/login/view/widgets/login/login_card.dart';

class LoginCardView extends StatelessWidget {
  const LoginCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginBackground(
      child: LoginCard(),
    );
  }
}
