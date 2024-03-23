import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/provider_choose_text.dart';
import 'package:iptv/features/login/view/widgets/providers_view.dart';

class ChooseProviderView extends StatelessWidget {
  const ChooseProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          const ProviderChooseText(),
          const SizedBox(height: 8.0),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              if (state is GetAllProvidersSuccess) {
                return ProvidersView(
                  allProvider: state.allProvider,
                );
              } else if (state is ProviderLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetAllProvidersFailure) {
                return const Text(
                  "SomeThing went wrong",
                  style: StyleManager.textStyle16,
                );
              } else {
                var allProvider =
                    BlocProvider.of<LoginCubit>(context).allProvider;
                return ProvidersView(allProvider: allProvider);
              }
            },
          ),
        ],
      ),
    );
  }
}
