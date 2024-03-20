import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onPressed: () {
          var formKey = BlocProvider.of<LoginCubit>(context).formKey;
          if (formKey.currentState!.validate()) {
            BlocProvider.of<LoginCubit>(context).signInWithEmailAndPassword();
          }
        },
        color: ColorManager.yollew,
        child: const Text("Login"),
      ),
    );
  }
}