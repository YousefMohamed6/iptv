import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/streams/series/controller/series_cubit.dart';
import 'package:iptv/features/streams/series/widgets/series_view_body.dart';

class SeriesView extends StatelessWidget {
  const SeriesView({super.key});
  static const String routeName = 'Series';
  static const String routePath = '/Series';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SeriesCubit()..getLocalData(),
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: ColorManager.background,
          body: SeriesViewBody(),
        ),
      ),
    );
  }
}
