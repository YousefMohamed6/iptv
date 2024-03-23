import 'package:flutter/material.dart';
import 'package:iptv/features/login/view/widgets/emil_text_field.dart';
import 'package:iptv/features/login/view/widgets/login_button.dart';
import 'package:iptv/features/login/view/widgets/login_listener.dart';
import 'package:iptv/features/login/view/widgets/password_text_field.dart';

class LoginWithEmailView extends StatelessWidget {
  const LoginWithEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginListener(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            EmailTextField(),
            SizedBox(height: 8.0),
            PasswordTextFiled(),
            SizedBox(height: 20.0),
            LoginButton(),
          ],
        ),
      ),
    );
  }
}
