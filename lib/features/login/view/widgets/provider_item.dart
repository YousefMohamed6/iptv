import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/models/provider_model.dart';

class ProviderItem extends StatelessWidget {
  const ProviderItem({super.key, required this.provider});
  final ProviderModel provider;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<LoginCubit>(context).selectProvider(
          provider: provider,
        );
      },
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: 124,
            height: 181,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: BlocProvider.of<LoginCubit>(context)
                            .seletedProvider
                            ?.name ==
                        provider.name
                    ? Colors.purple
                    : Colors.transparent,
                width: 4,
              ),
              image: DecorationImage(
                image: NetworkImage(provider.banner),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            height: 8,
            width: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  BlocProvider.of<LoginCubit>(context).seletedProvider?.name ==
                          provider.name
                      ? Colors.purple
                      : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
