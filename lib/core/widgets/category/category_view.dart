import 'package:flutter/material.dart';
import 'package:iptv/core/widgets/category/category_list_view.dart';
import 'package:iptv/features/home/model/category_model.dart';
import 'package:iptv/features/home/model/channal_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
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
    return Expanded(
      child: CateogoryListView(
        categoryLenth: categoryLenth,
        favouriteLenth: favouriteLenth,
        onFavPressed: onFavPressed,
        categories: categories,
        onCategoryPressed: onCategoryPressed,
        channals: channals,
        searchCtrl: searchCtrl,
      ),
    );
  }
}
