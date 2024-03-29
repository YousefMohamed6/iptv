part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class ProviderLoading extends LoginState {}

final class UnselectedProvider extends LoginState {}

final class FoundUser extends LoginState {}

final class LoginSucess extends LoginState {
  final String successMessage;

  LoginSucess({required this.successMessage});
}

final class LoginFailure extends LoginState {
  final String exceptionMessage;

  LoginFailure({required this.exceptionMessage});
}

final class GetAllProvidersSuccess extends LoginState {
  final List<ProviderModel> allProvider;
  GetAllProvidersSuccess({required this.allProvider});
}

final class GetAllProvidersFailure extends LoginState {
  final String exceptionMessage;
  GetAllProvidersFailure({required this.exceptionMessage});
}
