part of 'live_cubit.dart';

@immutable
sealed class LiveState {}

final class LiveInitial extends LiveState {}

final class GetChannalsSuccess extends LiveState {}

final class LocalDataFailure extends LiveState {}
