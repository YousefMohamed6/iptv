import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iptv/core/services/api_client.dart';
import 'package:iptv/features/login/models/provider_model.dart';
import 'package:iptv/features/login/models/user_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  final email = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool obSecureText = true;
  ProviderModel? seletedProvider;
  List<ProviderModel> allProvider = [];

  void _setState() {
    emit(LoginInitial());
  }

  Future<void> saveUserData() async {
    final userBox = Hive.box<UserModel>('user');
    var user = UserModel(
        userName: email.text,
        password: password.text,
        providerUrl: seletedProvider!.url);
    await userBox.add(user);
  }

  void visablePassword() {
    obSecureText = !obSecureText;
    _setState();
  }

  void selectProvider({required ProviderModel provider}) async {
    seletedProvider = provider;
    _setState();
  }

  Future<void> signInWithEmailAndPassword() async {
    if (seletedProvider != null) {
      String url =
          "${seletedProvider!.url}player_api.php?&username=${email.text}&password=${password.text}";
      try {
        Map<String, dynamic> data = await ApiClient.get(url: url);
        int auth = data['user_info']['auth'];
        if (auth == 1) {
          String message = data['user_info']['message'];
          await saveUserData();
          emit(LoginSucess(successMessage: message));
        } else {
          emit(
            LoginFailure(
              exceptionMessage: "error in Email or Password",
            ),
          );
        }
      } on Exception catch (_) {
        emit(
          LoginFailure(
            exceptionMessage: "error in Email or Password",
          ),
        );
      }
    } else {
      emit(UnselectedProvider());
    }
  }

  Future<void> getProviders() async {
    emit(ProviderLoading());
    try {
      List<ProviderModel> allProvider = [];
      String url = "http://royplayer.com/api/ios/supplier.php";
      var data = await ApiClient.get(url: url);

      for (int i = 0; i < data.length; i++) {
        ProviderModel providerModel = ProviderModel.fromJson(
          data[i],
        );
        allProvider.add(providerModel);
      }
      this.allProvider = allProvider;
      emit(GetAllProvidersSuccess(allProvider: allProvider));
    } on Exception catch (_) {
      emit(
        GetAllProvidersFailure(
          exceptionMessage: "Check internet conetion",
        ),
      );
    }
  }
}
