import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/services/api_client.dart';
import 'package:iptv/features/home/model/category_model.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/login/models/provider_model.dart';
import 'package:iptv/features/login/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<CategoryModel> liveCategorys = [];
  List<CategoryModel> moviesCategorys = [];
  List<CategoryModel> seriseCategorys = [];
  UserModel? user;
  int channalsId = 0;
  ProviderModel? currentProvider;
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

  void selectCategory({required int id}) {
    channalsId = id;
  }

  Future<List<CategoryModel>> getAllCategories({
    required String categoryUrl,
    required HomeState state,
  }) async {
    List<CategoryModel> allCategories = [];
    var categorise = await ApiClient.get(url: categoryUrl);
    for (int i = 0; i < categorise.length; i++) {
      allCategories.add(CategoryModel.fromJson(categorise[i]));
    }
    return allCategories;
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
        "http://ac-mega.pro/player_api.php?username=haya1&password=saleh2&action=get_live_categories&category_id=";
    dynamic data = await ApiClient.get(url: "$categoryUrl$id}");
    return data;
  }

  Future<List<dynamic>> getMoviesById({
    required int id,
  }) async {
    String categoryUrl =
        "http://ac-mega.pro/player_api.php?username=haya1&password=saleh2&action=get_vod_streams&category_id=";
    dynamic data = await ApiClient.get(url: "$categoryUrl$id}");
    return data;
  }

  Future<List<dynamic>> getSeriseById({
    required int id,
  }) async {
    String categoryUrl =
        "http://ac-mega.pro/player_api.php?username=haya1&password=saleh2&action=get_series&category_id=";
    dynamic data = await ApiClient.get(url: "$categoryUrl$id}");
    return data;
  }

  Future<void> getAmazon() async {
    for (int i = 0; i < currentProvider!.amazonIds.length; i++) {
      var data = await getMoviesById(id: currentProvider!.amazonIds[i]);
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }

  Future<void> getKids() async {
    for (int i = 0; i < currentProvider!.kidsId.length; i++) {
      var data = await getMoviesById(id: currentProvider!.kidsId[i]);
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }

  Future<void> getTops() async {
    for (int i = 0; i < currentProvider!.kidsId.length; i++) {
      var data = await getMoviesById(id: currentProvider!.kidsId[i]);
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }

  Future<void> getShahid() async {
    for (int i = 0; i < currentProvider!.kidsId.length; i++) {
      var data = await getSeriseById(id: currentProvider!.shahidIds[i]);
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }

  Future<void> getNetfilx() async {
    for (int i = 0; i < currentProvider!.kidsId.length; i++) {
      var data = await getSeriseById(
        id: currentProvider!.netflixIds[i],
      );
      for (int i = 0; i < data.length; i++) {}
    }
    emit(LoadingDataSuccess());
  }

  Future<void> getLocalData() async {
    try {
      var reference = await SharedPreferences.getInstance();
      String userName = reference.getString('name')!;
      String password = reference.getString('password')!;
      String url = reference.getString('url')!;
      String providerUrl = "${url.split(':')[0]}:${url.split(':')[1]}/";
      user = UserModel.fromLocalDate(
        userName: userName,
        password: password,
        providerUrl: providerUrl,
      );
      emit(LoadingDataSuccess());
    } on Exception catch (_) {
      emit(GetAllDataFaliure());
    }
  }

  Future<void> loadData() async {
    try {
      await getLocalData();
      await getLiveCategorys();
      await getMoviesCategorys();
      await getSeriesCategorys();
      emit(LoadingDataSuccess());
    } on Exception catch (_) {
      emit(GetAllDataFaliure());
    }
  }
}
