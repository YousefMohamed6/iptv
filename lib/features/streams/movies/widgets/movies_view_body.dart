import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/widgets/category/category_view.dart';
import 'package:iptv/core/widgets/channals/channal_view.dart';
import 'package:iptv/features/home/cubit/home_cubit.dart';
import 'package:iptv/features/streams/movies/controller/movies_cubit.dart';

class MoviesViewBody extends StatelessWidget {
  const MoviesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesState>(
      builder: (context, state) {
        return Row(
          children: [
            CategoryView(
              categories: BlocProvider.of<HomeCubit>(context).moviesCategorys,
              onPressed: () {
                int id = BlocProvider.of<HomeCubit>(context).channalsId;
                BlocProvider.of<MoviesCubit>(context)
                    .getMoviesChannalsById(id: id);
              },
              channals: BlocProvider.of<MoviesCubit>(context)
                    .moviesChannals,
              searchCtrl: BlocProvider.of<MoviesCubit>(context)
                    .searcCtrl,
              
            ),
            ChannallView(
              channals: BlocProvider.of<MoviesCubit>(context).moviesChannals,
            ),
          ],
        );
      },
    );
  }
}
