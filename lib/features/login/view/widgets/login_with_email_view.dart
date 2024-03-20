import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/show_message.dart';
import 'package:iptv/features/download/views/download_view.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/emil_text_field.dart';
import 'package:iptv/features/login/view/widgets/login_button.dart';
import 'package:iptv/features/login/view/widgets/password_text_field.dart';

class LoginWithEmailView extends StatelessWidget {
  const LoginWithEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSucess) {
            context.push(DownloadView.routePath);
            ShowMessage.show(msg: state.successMessage);
          } else if (state is LoginFailure) {
            ShowMessage.show(msg: state.exceptionMessage);
          } else if (state is UnselectedProvider) {
            ShowMessage.show(msg: 'Please Select your Provider');
          }
        },
        child: const Column(
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
