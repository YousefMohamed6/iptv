import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/widgets/category/category_item.dart';
import 'package:iptv/core/widgets/custom_table_view.dart';
import 'package:iptv/core/widgets/favourite/favourite_item.dart';
import 'package:iptv/core/widgets/search_text_feild.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/home/model/category_model.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';

class CateogoryListView extends StatelessWidget {
  const CateogoryListView({
    super.key,
    required this.categories,
    required this.onPressed, required this.channals, required this.searchCtrl,
  });
  final List<CategoryModel> categories;
  final VoidCallback onPressed;
  final List<ChannalModel> channals;
  final TextEditingController searchCtrl;
  @override
  Widget build(BuildContext context) {
    return CustomTableView(
      child: Column(
        children: [
          SearchTextFeiled(
            channals: channals,
            searchCtrl: searchCtrl,
          ),
           FavouriteItem(
            favouriteLenth: BlocProvider.of<LiveCubit>(context).favouriteChannal.length,
            onPressed: () {
                 BlocProvider.of<HomeCubit>(context).selectCategory(id: 0);
        BlocProvider.of<LiveCubit>(context).getFavourite();
            },
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: categories.length,
              itemBuilder: (context, index) => CategoryItem(
                category: categories[index],
                onPressed: onPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
