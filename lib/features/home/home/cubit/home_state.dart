part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class GetAllDataSuccess extends HomeState {}

final class GetAllDataFaliure extends HomeState {}