import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iptv/features/download/views/download_view.dart';
import 'package:iptv/features/home/view/home_view.dart';
import 'package:iptv/features/login/models/user_model.dart';
import 'package:iptv/features/login/view/login_view.dart';
import 'package:iptv/features/streams/amazon/amazon_view.dart';
import 'package:iptv/features/streams/kids/kids_view.dart';
import 'package:iptv/features/streams/live/live_view.dart';
import 'package:iptv/features/streams/live/widgets/live_player.dart';
import 'package:iptv/features/streams/movies/movies_view.dart';
import 'package:iptv/features/streams/netflix/netflix_view.dart';
import 'package:iptv/features/streams/series/series_view.dart';
import 'package:iptv/features/streams/shahid/shahid_view.dart';
import 'package:iptv/features/streams/tops/tops_view.dart';

abstract class RouteManager {
  static final userBox = Hive.box<UserModel>('user');
  static GoRouter routConfig = GoRouter(
   initialLocation: LoginView.routePath,
    // initialLocation:
    // userBox.values.isNotEmpty
    //     ? DownloadView.routePath
        // : LoginView.routePath,
    routes: [
      GoRoute(
        path: LoginView.routePath,
        name: LoginView.routeName,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: HomeView.rountePath,
        name: HomeView.rounteName,
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
      GoRoute(
        path: NetflixView.routePath,
        name: NetflixView.routeName,
        builder: (context, state) => const NetflixView(),
      ),
      GoRoute(
        path: ShahidView.routePath,
        name: ShahidView.routeName,
        builder: (context, state) => const ShahidView(),
      ),
      GoRoute(
        path: KidsView.routePath,
        name: KidsView.routeName,
        builder: (context, state) => const KidsView(),
      ),
      GoRoute(
        path: AmazonView.routePath,
        name: AmazonView.routeName,
        builder: (context, state) => const AmazonView(),
      ),
      GoRoute(
        path: TopsView.routePath,
        name: TopsView.routeName,
        builder: (context, state) => const TopsView(),
      ),
      GoRoute(
        // path: FullView.routePath,
        path: FullView.routePath,
        name: FullView.routeName,
        builder: (context, state) => const FullView(),
      ),
    ],
  );
}
