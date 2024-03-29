import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/login/controller/login_cubit.dart';

class CustomPoint extends StatelessWidget {
  const CustomPoint({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 8,
      width: 16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: BlocProvider.of<LoginCubit>(context).seletedProvider?.id == id
            ? ColorManager.yollew
            : Colors.transparent,
      ),
    );
  }
}
