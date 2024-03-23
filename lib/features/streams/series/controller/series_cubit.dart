import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iptv/core/services/api_client.dart';
import 'package:iptv/features/home/model/channal_model.dart';
import 'package:iptv/features/login/models/user_model.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'series_state.dart';

class SeriesCubit extends Cubit<SeriesState> {
  SeriesCubit() : super(SeriesInitial());
  UserModel? user;
  List<ChannalModel> seriesChannals = [];

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
    } on Exception catch (_) {
      emit(LocalDataFailure());
    }
  }
}
