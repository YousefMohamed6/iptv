import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/models/provider_model.dart';

class ProviderImage extends StatelessWidget {
  const ProviderImage({super.key, required this.provider});
  final ProviderModel provider;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: BlocProvider.of<LoginCubit>(context).seletedProvider?.id ==
                  provider.id
              ? ColorManager.yollew
              : Colors.transparent,
          width: 3,
        ),
        image: DecorationImage(
          image: NetworkImage(provider.banner),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}