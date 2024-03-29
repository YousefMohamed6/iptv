part of 'live_cubit.dart';

@immutable
sealed class LiveState {}

final class LiveInitial extends LiveState {}

final class GetChannalsSuccess extends LiveState {}

final class LocalDataFailure extends LiveState {}

final class EmptySearch extends LiveState {}

final class SearchFinsh extends LiveState {
  final List<ChannalModel> channals;

  SearchFinsh({required this.channals});
}

final class GetFavouriteSuccess extends LiveState {
  final List<ChannalModel> channal;

  GetFavouriteSuccess({required this.channal});
}
