import 'package:hive_flutter/hive_flutter.dart';

part 'user_model.g.dart';

@HiveType(typeId: 2)
class UserModel extends HiveObject {
   @HiveField(0)
  final String userName;
   @HiveField(1)
  final String password;
   @HiveField(2)
  final String providerUrl;

  UserModel(
      {required this.userName,
      required this.password,
      required this.providerUrl});

  factory UserModel.fromLocalDate(
      {required String userName,
      required String password,
      required String providerUrl}) {
    return UserModel(
      userName: userName,
      password: password,
      providerUrl: providerUrl,
    );
  }
}
