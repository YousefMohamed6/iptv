class UserModel {
  final String userName, password, providerUrl;

  UserModel._(
      {required this.userName,
      required this.password,
      required this.providerUrl});
  
  factory UserModel.fromLocalDate(
      {required String userName,
      required String password,
      required String providerUrl}) {
    return UserModel._(
      userName: userName,
      password: password,
      providerUrl: providerUrl,
    );
  }
}
