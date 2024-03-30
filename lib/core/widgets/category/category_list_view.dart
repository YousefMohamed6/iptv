import 'package:flutter/material.dart';
import 'package:iptv/core/widgets/category/category_item.dart';
import 'package:iptv/core/widgets/custom_table_view.dart';
import 'package:iptv/core/widgets/favourite/favourite_item.dart';
import 'package:iptv/core/widgets/search_text_feild.dart';
import 'package:iptv/features/home/model/category_model.dart';
import 'package:iptv/features/home/model/channal_model.dart';

class CateogoryListView extends StatelessWidget {
  const CateogoryListView({
    super.key,
    required this.categories,
    required this.onCategoryPressed,
    required this.channals,
    required this.searchCtrl,
    required this.favouriteLenth,
    required this.onFavPressed, required this.categoryLenth,
  });
  final List<CategoryModel> categories;
  final VoidCallback onCategoryPressed;
  final List<ChannalModel> channals;
  final TextEditingController searchCtrl;
  final int favouriteLenth;
  final VoidCallback onFavPressed;
  final int categoryLenth;
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
            favouriteLenth: favouriteLenth,
            onPressed: onFavPressed,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: categories.length,
              itemBuilder: (context, index) => CategoryItem(
                category: categories[index],
                onPressed: onCategoryPressed,
                categoryLenth: categoryLenth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
