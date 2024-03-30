import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/login/custom_form_filed.dart';

class PasswordTextFiled extends StatelessWidget {
  const PasswordTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return CutomTextFormFiled(
          controller: BlocProvider.of<LoginCubit>(context).password,
          obSecureText: BlocProvider.of<LoginCubit>(context).obSecureText,
          lableText: "Password",
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            onPressed: () {
              BlocProvider.of<LoginCubit>(context).visablePassword();
            },
            icon: BlocProvider.of<LoginCubit>(context).obSecureText
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
          ),
        );
      },
    );
  }
}
