import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/core/uitls/fonts_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/choose_provider_view.dart';
import 'package:iptv/features/login/view/widgets/login_with_email_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: BlocProvider.of<LoginCubit>(context).formKey,
      child: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ChooseProviderView(),
              Expanded(
                child: Card(
                  margin: const EdgeInsets.all(16),
                  color: ColorManager.background,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          AssetsManager.iptv,
                          fit: BoxFit.fill,
                          height: 100,
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          "Enter Username and Password",
                          style: StyleManager.textStyle16.copyWith(
                              fontWeight: FontWeight.bold,
                              fontFamily: FontFamily.lexend),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20.0),
                        const LoginWithEmailView(),
                        const SizedBox(height: 20.0),
                        Text(
                          "We are just a player\nwe don't sell any subscription to any provider\nwe only play the content and have no relation with any provider or the provider's content",
                          style: StyleManager.textStyle16.copyWith(
                            color: Colors.yellow,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20.0),
                        const Text(
                          "you can purchase the provider's services through the website",
                          style: StyleManager.textStyle16,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          "www.b-in.net",
                          style: StyleManager.textStyle16.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
