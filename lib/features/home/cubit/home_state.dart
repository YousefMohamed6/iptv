part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class LoadingDataSuccess extends HomeState {}

final class LiveSuccess extends HomeState {}

final class MoviesSuccess extends HomeState {}

final class SeriseSuccess extends HomeState {}

final class LoadingDataFaliure extends HomeState {}

final class LoadLocalDateSuccess extends HomeState {}

final class LoadLocalDateFailure extends HomeState {}