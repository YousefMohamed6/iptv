import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:iptv/core/services/api_client.dart';
import 'package:iptv/features/home/model/category_model.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/login/models/user_model.dart';

part 'live_state.dart';

class LiveCubit extends Cubit<LiveState> {
  LiveCubit() : super(LiveInitial());
  UserModel? user;
  int id = 0;
  List<ChannalModel> liveChannals = [];
  List<ChannalModel> favouriteChannal = [];
  List<CategoryModel> liveCategorys = [];
  final searchController = TextEditingController();
  String streamLink = 'http://ac-mega.pro/live/haya1/saleh2/233155.ts';
  
  Future<List<ChannalModel>> getChannalsById({required int id}) async {
    List<ChannalModel> channals = [];
    String categoryUrl =
        "${user!.providerUrl}player_api.php?username=${user!.userName}&password=${user!.password}&action=get_live_streams&category_id=";
    dynamic data = await ApiClient.get(url: "$categoryUrl$id}");
    for (int i = 0; i < data.length; i++) {
      channals.add(ChannalModel.fromJson(data[i]));
    }
    return channals;
  }

  Future<void> getChannals({required int id}) async {
    List<ChannalModel> channals = [];
    String categoryUrl =
        "${user!.providerUrl}player_api.php?username=${user!.userName}&password=${user!.password}&action=get_live_streams&category_id=";
    dynamic data = await ApiClient.get(url: "$categoryUrl$id}");
    for (int i = 0; i < data.length; i++) {
      channals.add(ChannalModel.fromJson(data[i]));
    }
    liveChannals = channals;
    emit(LiveInitial());
  }

  Future<void> getLocalData() async {
    try {
      final userBox = Hive.box<UserModel>('user');
      user = userBox.values.toList()[0];
    } on Exception catch (_) {
      emit(LocalDataFailure());
    }
  }

  Future<void> search({
    required String word,
    required List<ChannalModel> channals,
    required List<CategoryModel> categorys,
  }) async {
    List<ChannalModel> channalResult = [];
    List<CategoryModel> filterCategory = [];

    for (int i = 0; i < categorys.length; i++) {
      if (categorys[i].name.contains(word.toUpperCase())) {
        filterCategory.add(categorys[i]);
      }
    }
    if (filterCategory.isEmpty) {
      emit(EmptySearch());
    } else {
      for (int i = 0; i < filterCategory.length; i++) {
        List<ChannalModel> channals = await getChannalsById(
          id: int.parse(
            filterCategory[i].id,
          ),
        );
        for (int i = 0; i < channals.length; i++) {
          if (channals[i].name.contains(word)) {
            channalResult.add(channals[i]);
          }
        }
        emit(SearchFinsh(channals: channalResult));
      }
    }
  }

  Future<void> addToFavourite({required ChannalModel channal}) async {
    final favBox = Hive.box<ChannalModel>('channal');
    try {
      await favBox.add(channal);
      emit(LiveInitial());
    } on Exception catch (_) {
      channal.delete();
      emit(LiveInitial());
    }
  }

  Future<void> deleteFromFavourite({required ChannalModel channal}) async {
    try {
      channal.delete();
      emit(LiveInitial());
    } on Exception catch (_) {
      emit(LiveInitial());
    }
  }

  Future<void> getFavourite() async {
    final favBox = Hive.box<ChannalModel>('channal');
    favouriteChannal = favBox.values.toSet().toList();
    emit(
      GetFavouriteSuccess(
        channal: favouriteChannal,
      ),
    );
  }

  Future<void> lockCategory({required CategoryModel category}) async {
    final lockBox = Hive.box<CategoryModel>('lock');
    try {
      await lockBox.add(category);
      emit(LiveInitial());
    } on Exception catch (_) {
      category.delete();
      emit(LiveInitial());
    }
  }

  Future<void> getLokedCategory() async {
    final lockBox = Hive.box<CategoryModel>('lock');
    lockBox.values.toSet().toList();
    emit(LiveInitial());
  }
}
  
