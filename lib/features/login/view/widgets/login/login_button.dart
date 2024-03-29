import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          var formKey = BlocProvider.of<LoginCubit>(context).formKey;
          if (formKey.currentState!.validate()) {
            BlocProvider.of<LoginCubit>(context).signInWithEmailAndPassword();
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.075,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xffE58A08),
                Color(0xffFFAD37),
                Color(0xffFFAD37),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            "Login",
            style: StyleManager.textStyle16.copyWith(
              fontSize: MediaQuery.sizeOf(context).width * 0.016,
            ),
          ),
        ));
  }
}
