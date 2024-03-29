import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iptv/core/services/api_client.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/login/models/user_model.dart';
import 'package:meta/meta.dart';

part 'series_state.dart';

class SeriesCubit extends Cubit<SeriesState> {
  SeriesCubit() : super(SeriesInitial());
  UserModel? user;
  List<ChannalModel> seriesChannals = [];
  final searchCtrl = TextEditingController();
  Future<void> getSeriesChannalsById({
    required int id,
  }) async {
    List<ChannalModel> channals = [];
    String categoryUrl =
        "${user!.providerUrl}player_api.php?username=${user!.userName}&password=${user!.password}&action=get_series&category_id=";
    dynamic data = await ApiClient.get(url: "$categoryUrl$id}");
    for (int i = 0; i < data.length; i++) {
      channals.add(ChannalModel.fromJson(data[i]));
    }
    seriesChannals = channals;
    emit(SeriesInitial());
  }

  Future<void> getLocalData() async {
    try {
      final userBox = Hive.box<UserModel>('user');
      user = userBox.values.toList()[0];
    } on Exception catch (_) {
      emit(LocalDataFailure());
    }
  }
}
