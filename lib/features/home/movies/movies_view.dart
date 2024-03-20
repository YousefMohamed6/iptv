import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/home/movies/widgets/movies_view_body.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({super.key});
  static const String routeName = 'Movies';
  static const String routePath = '/Movies';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.background,
        body: MoviesViewBody(),
      ),
    );
  }
}
