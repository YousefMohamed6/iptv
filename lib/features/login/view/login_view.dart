import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit()..getAllProvider(),
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: ColorManager.background,
          body: LoginViewBody(),
        ),
      ),
    );
  }
}
