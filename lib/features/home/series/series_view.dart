import 'package:flutter/material.dart';
import 'package:iptv/core/uitls/colors_manager.dart';
import 'package:iptv/features/home/series/widgets/series_view_body.dart';

class SeriesView extends StatelessWidget {
  const SeriesView({super.key});
  static const String routeName = 'Series';
  static const String routePath = '/Series';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.background,
        body: SeriesViewBody(),
      ),
    );
  }
}
