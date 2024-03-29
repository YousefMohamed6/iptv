import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';

class CategoryLenth extends StatelessWidget {
  const CategoryLenth({super.key, required this.categoryId});
  final int categoryId;
  @override
  Widget build(BuildContext context) {
    return Text(
      BlocProvider.of<HomeCubit>(context).channalsId == categoryId
          ? BlocProvider.of<LiveCubit>(context).liveChannals.length.toString()
          : '',
      style: StyleManager.textStyle16.copyWith(
        color: ColorManager.primary,
        fontSize: MediaQuery.sizeOf(context).width * 0.020,
      ),
    );
  }
}
