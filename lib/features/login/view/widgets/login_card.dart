import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/core/widgets/iptv_icon.dart';
import 'package:iptv/features/login/view/widgets/descraption_text.dart';
import 'package:iptv/features/login/view/widgets/login_with_email_view.dart';
import 'package:iptv/features/login/view/widgets/puchar_text.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        const IptvImage(),
        const SizedBox(height: 20.0),
        Text(
          "Enter Username and Password",
          style: StyleManager.textStyle18.copyWith(),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20.0),
        const LoginWithEmailView(),
        const SizedBox(height: 20.0),
        const DescraptionText(),
        const SizedBox(height: 20.0),
        const Text(
          "you can purchase the provider's services through the website",
          style: StyleManager.textStyle16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20.0),
        const PachurLink(),
        const SizedBox(height: 20.0),
      ],
    );
  }
}