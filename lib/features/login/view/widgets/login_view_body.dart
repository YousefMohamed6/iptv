import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/choose_provider_view.dart';
import 'package:iptv/features/login/view/widgets/login_view_card.dart';
import 'package:iptv/features/login/view/widgets/user_listener.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return UserListener(
      child: Form(
        key: BlocProvider.of<LoginCubit>(context).formKey,
        child: ListView(
          children: const [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChooseProviderView(),
                LoginViewCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
