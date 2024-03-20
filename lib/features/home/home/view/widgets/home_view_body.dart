import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv/core/uitls/assets_manager.dart';
import 'package:iptv/core/widgets/iptv_item.dart';
import 'package:iptv/features/home/live/live_view.dart';
import 'package:iptv/features/home/movies/movies_view.dart';
import 'package:iptv/features/home/series/series_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IPTVItem(
          imagePath: AssetsManager.live,
          onTap: () {
            context.pushNamed(LiveView.routeName);
          },
        ),
        IPTVItem(
          imagePath: AssetsManager.movies,
          onTap: () {
            context.pushNamed(MoviesView.routeName);
          },
        ),
        IPTVItem(
          imagePath: AssetsManager.series,
          onTap: () {
            context.pushNamed(SeriesView.routeName);
          },
        ),
      ],
    );
  }
}
