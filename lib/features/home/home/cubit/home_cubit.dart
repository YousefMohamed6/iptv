import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/services/api_client.dart';
import 'package:iptv/features/home/home/model/category_model.dart';
import 'package:iptv/features/home/home/model/channal_model.dart';
import 'package:iptv/features/home/home/model/iptv_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<IPTVModel> allLive = [];
  List<IPTVModel> allMovies = [];
  List<IPTVModel> allSeries = [];
  String username = '';
  String password = '';
  String providerUrl = '';

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

  Future<List<ChannalModel>> getChannals({
    required String channalsUrl,
  }) async {
    List<ChannalModel> allChannels = [];
    var channals = await ApiClient.get(url: channalsUrl);
    for (int i = 0; i < channals.length; i++) {
      allChannels.add(ChannalModel.fromJson(channals[i]));
    }
    return allChannels;
  }

  Future<List<IPTVModel>> getData({
    required String categoryUrl,
    required String channalsUrl,
  }) async {
    try {
      List<IPTVModel> data = [];
      List<CategoryModel> allCategories = [];
      allCategories = await getCategories(categoryUrl: categoryUrl);
      for (int i = 0; i < allCategories.length; i++) {
        List<ChannalModel> channals = [];
        channals = await getChannals(
            channalsUrl: "$channalsUrl${allCategories[i].id}");
        data.add(
          IPTVModel.fromData(
            category: allCategories[i],
            allChannal: channals,
          ),
        );
      }
      return data;
    } catch (_) {
      return [];
    }
  }

  Future<void> getAllLive() async {
    String categoryUrl =
        "${providerUrl}player_api.php?action=get_live_categories&username=$username&password=$password";
    String channalsUrl =
        "${providerUrl}player_api.php?username=$username&password=$password&action=get_live_streams&category_id=";
    allLive = await getData(
      categoryUrl: categoryUrl,
      channalsUrl: channalsUrl,
    );
  }

  Future<void> getAllMovies() async {
    try {
      String categoryUrl =
          "${providerUrl}player_api.php?action=get_vod_categories&username=$username&password=$password";
      String channalsUrl =
          "${providerUrl}player_api.php?username=$username&password=$password&action=get_vod_streams&category_id=";
      //response of all category
      allMovies = await getData(
        categoryUrl: categoryUrl,
        channalsUrl: channalsUrl,
      );
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> getAllSeries() async {
    try {
      String categoryUrl =
          "${providerUrl}player_api.php?action=get_series_categories&username=$username&password=$password";
      String channalsUrl =
          "${providerUrl}player_api.php?username=$username&password=$password&action=get_series&category_id=";
      allSeries = await getData(
        categoryUrl: categoryUrl,
        channalsUrl: channalsUrl,
      );
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> getAllData() async {
    try {
      var reference = await SharedPreferences.getInstance();
      username = reference.getString('name')!;
      password = reference.getString('password')!;
      String url = reference.getString('url')!;
      providerUrl = "${url.split(':')[0]}:${url.split(':')[1]}/";
      await getAllLive();
      await getAllMovies();
      await getAllSeries();
      emit(GetAllDataSuccess());
    } on Exception catch (_) {
      emit(GetAllDataFaliure());
    }
  }
}
