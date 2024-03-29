import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/widgets/category/category_view.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/streams/live/controller/live_cubit.dart';

class LiveCategoriesView extends StatelessWidget {
  const LiveCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return CategoryView(
          categories: BlocProvider.of<HomeCubit>(context).liveCategorys,
          onPressed: () {
            int id = BlocProvider.of<HomeCubit>(context).channalsId;
            BlocProvider.of<LiveCubit>(context).getChannals(id: id);
          },
          searchCtrl: BlocProvider.of<LiveCubit>(context).searchController,
          channals: BlocProvider.of<LiveCubit>(context).liveChannals,
        );
      },
    );
  }
}
