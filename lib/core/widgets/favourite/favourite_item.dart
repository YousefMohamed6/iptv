import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/core/uitls/styles_manager.dart';
import 'package:iptv/core/widgets/category/item_background.dart';
import 'package:iptv/core/widgets/favourite/favourite_lenth.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem(
      {super.key, required this.favouriteLenth, required this.onPressed});
  final int favouriteLenth;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ItemBackground(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: ColorManager.yollew,
                  size: 32,
                ),
                const SizedBox(width: 16),
                BlocBuilder<LiveCubit, LiveState>(
                  builder: (context, state) {
                    return Text(
                      "Favourite",
                      style: StyleManager.textStyle18.copyWith(
                        fontSize: MediaQuery.sizeOf(context).width * 0.032,
                        color:
                            BlocProvider.of<HomeCubit>(context).channalsId == 0
                                ? ColorManager.yollew
                                : null,
                      ),
                    );
                  },
                ),
              ],
            ),
            FavouriteLenth(
              favouriteLenth: favouriteLenth,
            ),
          ],
        ),
      ),
    );
  }
}
