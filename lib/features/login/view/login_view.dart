import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/core/widgets/back_ground.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = "login";
  static const String routePath = "/login";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit()..getUserData(),
      child: const Scaffold(
        backgroundColor: ColorManager.background,
        body: Background(
          child: LoginViewBody(),
        ),
      ),
    );
  }
}
