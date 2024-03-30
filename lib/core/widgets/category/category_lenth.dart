import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';

class CategoryLenth extends StatelessWidget {
  const CategoryLenth(
      {super.key, required this.categoryId, required this.categoryLenth});
  final int categoryId;
  final int categoryLenth;
  @override
  Widget build(BuildContext context) {
    return Text(
      BlocProvider.of<HomeCubit>(context).categoryId == categoryId
          ? categoryLenth.toString()
          : '',
      style: StyleManager.textStyle16.copyWith(
        color: ColorManager.yollew,
        fontSize: MediaQuery.sizeOf(context).width * 0.014,
      ),
    );
  }
}
