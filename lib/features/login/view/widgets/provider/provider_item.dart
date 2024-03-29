import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';
import 'package:iptv/features/login/models/provider_model.dart';
import 'package:iptv/features/login/view/widgets/provider/custom_point.dart';
import 'package:iptv/features/login/view/widgets/provider/provider_image.dart';

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
        BlocProvider.of<HomeCubit>(context).provider = provider;
      },
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          ProviderImage(provider: provider),
          CustomPoint(id: provider.id),
        ],
      ),
    );
  }
}
