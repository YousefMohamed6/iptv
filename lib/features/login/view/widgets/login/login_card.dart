import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/core/widgets/custom_logo.dart';
import 'package:iptv/features/login/view/widgets/login/email_text_field.dart';
import 'package:iptv/features/login/view/widgets/login/login_button.dart';
import 'package:iptv/features/login/view/widgets/login/login_listener.dart';
import 'package:iptv/features/login/view/widgets/login/password_text_field.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginListener(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomLogo(
            height: MediaQuery.sizeOf(context).height * 0.14,
            width: MediaQuery.sizeOf(context).width * 0.16,
          ),
          Text(
            "Enter username and password",
            style: StyleManager.textStyle14.copyWith(
              fontSize: MediaQuery.sizeOf(context).width * 0.016,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          const EmailTextField(),
          const SizedBox(height: 4.0),
          const PasswordTextFiled(),
          const SizedBox(height: 8.0),
          const LoginButton(),
        ],
      ),
    );
  }
}
