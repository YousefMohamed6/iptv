import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iptv/core/services/api_client.dart';
import 'package:iptv/features/home/model/category_model.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/login/models/provider_model.dart';
import 'package:iptv/features/login/models/user_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<CategoryModel> liveCategorys = [];
  List<CategoryModel> moviesCategorys = [];
  List<CategoryModel> seriseCategorys = [];
  UserModel? user;
  int categoryId = 0;
  ProviderModel? provider;
  VlcPlayerController playerController = VlcPlayerController.network(
    'http://ac-mega.pro:80/live/haya1/saleh2/345191.ts',
    hwAcc: HwAcc.auto,
    autoPlay: true,
    allowBackgroundPlayback: true,
    autoInitialize: true,
    options: VlcPlayerOptions(),
  );
  String streamLink = 'http://ac-mega.pro:80/live/haya1/saleh2/345191.ts';

  Future<void> getUserData() async {
    try {
      final userBox = Hive.box<UserModel>('user');
      user = userBox.values.toList().first;
      emit(LoadLocalDateSuccess());
    } on Exception catch (_) {
      emit(LoadLocalDateFailure());
    }
  }

  void selectCategory({required int id}) {
    categoryId = id;
  }

  Future<List<CategoryModel>> getCategories({
    required String categoryUrl,
  }) async {
    List<CategoryModel> allCategories = [];
    var categorise = await ApiClient.get(url: categoryUrl);
    for (int i = 0; i < categorise.length; i++) {
      allCategories.add(CategoryModel.fromJson(categorise[i]));
    }
    return allCategories;
  }

  Future<void> getLiveCategorys() async {
    String categoryUrl =
        "${user!.providerUrl}player_api.php?action=get_live_categories&username=${user!.userName}&password=${user!.password}";
    liveCategorys = await getCategories(categoryUrl: categoryUrl);
  }

  Future<void> getMoviesCategorys() async {
    String categoryUrl =
        "${user!.providerUrl}player_api.php?action=get_vod_categories&username=${user!.userName}&password=${user!.password}";
    moviesCategorys = await getCategories(categoryUrl: categoryUrl);
  }

  Future<void> getSeriesCategorys() async {
    String categoryUrl =
        "${user!.providerUrl}player_api.php?action=get_series_categories&username=${user!.userName}&password=${user!.password}";
    seriseCategorys = await getCategories(categoryUrl: categoryUrl);
  }

  Future<void> loadData() async {
    try {
      await getUserData();
      await getLiveCategorys();
      await getMoviesCategorys();
      await getSeriesCategorys();
      emit(LoadingDataSuccess());
    } on Exception catch (_) {
      emit(LoadingDataFaliure());
    }
  }

  void getStreamLink({required ChannalModel channal}) {
    streamLink =
        "${user!.providerUrl}${channal.streamType}/${user!.userName}/${user!.password}/${channal.streamId}.m3u8";
    playerController.setMediaFromNetwork(streamLink);
  }

  Future<List<ChannalModel>> getAllChannals({
    required String channalsUrl,
  }) async {
    List<ChannalModel> allChannels = [];
    var channals = await ApiClient.get(url: channalsUrl);
    for (int i = 0; i < channals.length; i++) {
      allChannels.add(ChannalModel.fromJson(channals[i]));
    }
    return allChannels;
  }

  Future<List<dynamic>> getLiveById({
    required int id,
  }) async {
    String categoryUrl =
        "${user!.providerUrl}player_api.php?username=${user!.userName}&password=${user!.password}&action=get_live_categories&category_id=";
    dynamic data = await ApiClient.get(url: "$categoryUrl$id}");
    return data;
  }

  Future<List<dynamic>> getMoviesById({
    required int id,
  }) async {
    String categoryUrl =
        "${user!.providerUrl}player_api.php?username=${user!.userName}&password=${user!.password}&action=get_vod_streams&category_id=";
    dynamic data = await ApiClient.get(url: "$categoryUrl$id}");
    return data;
  }

  Future<List<dynamic>> getSeriseById({
    required int id,
  }) async {
    String categoryUrl =
        "${user!.providerUrl}player_api.php?username=${user!.userName}&password=${user!.password}action=get_series&category_id=";
    dynamic data = await ApiClient.get(url: "$categoryUrl$id}");
    return data;
  }

  Future<void> getAmazon() async {
    for (int i = 0; i < provider!.amazonIds.length; i++) {
      var data = await getMoviesById(id: provider!.amazonIds[i]);
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }

  Future<void> getKids() async {
    for (int i = 0; i < provider!.kidsId.length; i++) {
      var data = await getMoviesById(id: provider!.kidsId[i]);
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }

  Future<void> getTops() async {
    for (int i = 0; i < provider!.kidsId.length; i++) {
      var data = await getMoviesById(id: provider!.kidsId[i]);
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }

  Future<void> getShahid() async {
    for (int i = 0; i < provider!.kidsId.length; i++) {
      var data = await getSeriseById(id: provider!.shahidIds[i]);
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }

  Future<void> getNetfilx() async {
    for (int i = 0; i < provider!.kidsId.length; i++) {
      var data = await getSeriseById(
        id: provider!.netflixIds[i],
      );
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }
}
