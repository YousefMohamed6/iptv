part of 'series_cubit.dart';

@immutable
sealed class SeriesState {}

final class SeriesInitial extends SeriesState {}

final class LocalDataFailure extends SeriesState {}
