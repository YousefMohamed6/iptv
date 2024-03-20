import 'package:go_router/go_router.dart';
import 'package:iptv/features/download/views/download_view.dart';
import 'package:iptv/features/home/home/view/home_view.dart';
import 'package:iptv/features/home/live/live_view.dart';
import 'package:iptv/features/home/movies/movies_view.dart';
import 'package:iptv/features/home/series/series_view.dart';
import 'package:iptv/features/login/view/login_view.dart';

abstract class RouteManager {
  static GoRouter routConfig = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: HomeView.rountePath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: DownloadView.routePath,
        name: DownloadView.routeName,
        builder: (context, state) => const DownloadView(),
      ),
      GoRoute(
        path: LiveView.routePath,
        name: LiveView.routeName,
        builder: (context, state) => const LiveView(),
      ),
      GoRoute(
        path: MoviesView.routePath,
        name: MoviesView.routeName,
        builder: (context, state) => const MoviesView(),
      ),
      GoRoute(
        path: SeriesView.routePath,
        name: SeriesView.routeName,
        builder: (context, state) => const SeriesView(),
      ),
    ],
  );
}
