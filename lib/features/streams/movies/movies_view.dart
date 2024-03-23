import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/streams/movies/controller/movies_cubit.dart';
import 'package:iptv/features/streams/movies/widgets/movies_view_body.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({super.key});
  static const String routeName = 'Movies';
  static const String routePath = '/Movies';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesCubit()..getLocalData(),
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: ColorManager.background,
          body: MoviesViewBody(),
        ),
      ),
    );
  }
}
