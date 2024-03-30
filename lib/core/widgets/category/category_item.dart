import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/core/widgets/category/category_lenth.dart';
import 'package:iptv/core/widgets/category/category_name.dart';
import 'package:iptv/core/widgets/category/item_background.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/home/model/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.category,
      required this.onPressed,
      required this.categoryLenth});
  final CategoryModel category;
  final VoidCallback onPressed;
  final int categoryLenth;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () async {
        await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: const Text("Are you need to Lock that"),
              actions: [
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: const Text(
                    "ok",
                    style: StyleManager.textStyle16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: const Text(
                    "Cancel",
                    style: StyleManager.textStyle16,
                  ),
                ),
              ],
            );
          },
        );
      },
      onTap: () {
        BlocProvider.of<HomeCubit>(context).selectCategory(
          id: int.parse(
            category.id,
          ),
        );
        onPressed();
      },
      child: ItemBackground(
        child: Row(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AssetsManager.channalLogo,
                  width: MediaQuery.sizeOf(context).width * 0.024,
                ),
                const SizedBox(width: 8),
                CategoryName(category: category),
              ],
            ),
            const Spacer(),
            CategoryLenth(
              categoryId: int.parse(category.id),
              categoryLenth: categoryLenth,
            ),
          ],
        ),
      ),
    );
  }
}
