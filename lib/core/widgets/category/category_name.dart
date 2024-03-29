import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/home/model/category_model.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Text(
      category.name,
      style: StyleManager.textStyle16.copyWith(
        color: BlocProvider.of<HomeCubit>(context).channalsId ==
                int.parse(
                  category.id,
                )
            ? ColorManager.yollew
            : Colors.white,
        fontSize: MediaQuery.sizeOf(context).width * 0.020,
      ),
    );
  }
}
