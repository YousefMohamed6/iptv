import 'package:flutter/material.dart';
import 'package:iptv/core/widgets/category/category_list_view.dart';
import 'package:iptv/features/home/model/category_model.dart';
import 'package:iptv/features/home/model/channal_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.categories,
    required this.onPressed,
    required this.channals,
    required this.searchCtrl,
  });
  final List<CategoryModel> categories;
  final VoidCallback onPressed;
  final List<ChannalModel> channals;
  final TextEditingController searchCtrl;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CateogoryListView(
        categories: categories,
        onPressed: onPressed,
        channals: channals,
        searchCtrl: searchCtrl,
      ),
    );
  }
}
