import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/view/widgets/provider_item.dart';

class ChooseProviderView extends StatelessWidget {
  const ChooseProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.group),
              const SizedBox(width: 4),
              Text(
                "Choose The Provider",
                style: StyleManager.textStyle16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              if (state is GetAllProvidersSuccess) {
                return GridView.builder(
                  itemCount: state.allProvider.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  ),
                  itemBuilder: (context, index) {
                    return ProviderItem(
                      provider: state.allProvider[index],
                    );
                  },
                );
              } else if (state is Loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetAllProvidersFailure) {
                return const Text("SomeThing went wrong");
              } else {
                var allProvider =
                    BlocProvider.of<LoginCubit>(context).allProvider;
                return GridView.builder(
                  itemCount: allProvider.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                  itemBuilder: (context, index) {
                    return ProviderItem(
                      provider: allProvider[index],
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
