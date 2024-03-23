import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/core/uitls/fonts_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        minWidth: 100,
        onPressed: () async {
          var formKey = BlocProvider.of<LoginCubit>(context).formKey;
          if (formKey.currentState!.validate()) {
            BlocProvider.of<LoginCubit>(context).signInWithEmailAndPassword();
            await BlocProvider.of<HomeCubit>(context).loadData();
          }
        },
        color: ColorManager.yollew,
        child: Text(
          "Login",
          style: StyleManager.textStyle16.copyWith(
            fontFamily: FontFamily.lexend,
          ),
        ),
      ),
    );
  }
}
