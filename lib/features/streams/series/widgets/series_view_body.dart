import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/widgets/category/category_view.dart';
import 'package:iptv/core/widgets/channals/channal_view.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/streams/series/controller/series_cubit.dart';

class SeriesViewBody extends StatelessWidget {
  const SeriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeriesCubit, SeriesState>(
      builder: (context, state) {
        return Row(
          children: [
            CategoryView(
              categories: BlocProvider.of<HomeCubit>(context).seriseCategorys,
              onPressed: () {
                int id = BlocProvider.of<HomeCubit>(context).channalsId;
                BlocProvider.of<SeriesCubit>(context)
                    .getSeriesChannalsById(id: id);
              },
              channals: BlocProvider.of<SeriesCubit>(context).seriesChannals,
              searchCtrl: BlocProvider.of<SeriesCubit>(context).searchCtrl,
            ),
            ChannallView(
              channals: BlocProvider.of<SeriesCubit>(context).seriesChannals,
            ),
          ],
        );
      },
    );
  }
}
