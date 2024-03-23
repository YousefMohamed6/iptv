import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/home/model/category_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView(
      {super.key, required this.categories, required this.onPressed});
  final List<CategoryModel> categories;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) => MaterialButton(
              onPressed: () {
                BlocProvider.of<HomeCubit>(context).selectCategory(
                  id: int.parse(
                    categories[index].id,
                  ),
                );
                onPressed();
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(color: Colors.grey),
                child: Row(
                  children: [
                    Text(
                      categories[index].name,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
