import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/features/home/home/cubit/home_cubit.dart';

class MoviesViewBody extends StatelessWidget {
  const MoviesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: BlocProvider.of<HomeCubit>(context).allMovies.length,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(color: Colors.grey),
        child: Row(
          children: [
            Text(
              BlocProvider.of<HomeCubit>(context).allMovies[index].category.name,
            ),
            const SizedBox(width: 8),
            Text(
              BlocProvider.of<HomeCubit>(context)
                  .allSeries[index]
                  .allChannel
                  .length
                  .toString(),
            ),
          ],
        ),
      ),
    );
  }
}
