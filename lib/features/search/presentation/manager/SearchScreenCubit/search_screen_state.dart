part of 'search_screen_cubit.dart';

@immutable
sealed class SearchScreenState {}

final class SearchScreenInitial extends SearchScreenState {}
final class SearchScreenSuccess extends SearchScreenState {
  final List<Items> items;


  SearchScreenSuccess( this.items);}
final class SearchScreenFailure extends SearchScreenState {
  final String errMessage;

  SearchScreenFailure( this.errMessage);
}
final class SearchScreenLoading extends SearchScreenState {}
