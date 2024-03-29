import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/provider/choose_provider_view.dart';
import 'package:iptv/features/login/view/widgets/login/login_card_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: BlocProvider.of<LoginCubit>(context).formKey,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ChooseProviderView(),
          LoginCardView(),
        ],
      ),
    );
  }
}
