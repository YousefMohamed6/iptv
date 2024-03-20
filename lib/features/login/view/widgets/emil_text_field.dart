import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/custom_form_filed.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CutomTextFormFiled(
      controller: BlocProvider.of<LoginCubit>(context).email,
      hintText: "Username",
      prefixIcon: const Icon(Icons.person_2_outlined),
      suffixIcon: const SizedBox(),
    );
  }
}