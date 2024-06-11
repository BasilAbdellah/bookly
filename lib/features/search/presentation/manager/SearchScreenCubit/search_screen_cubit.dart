
import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:bookly/features/home/data/repos/HomeRepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_screen_state.dart';

class SearchScreenCubit extends Cubit<SearchScreenState> {
  SearchScreenCubit(this.homeRepo) : super(SearchScreenInitial());
  static SearchScreenCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;
  Future<void> fetchSearchedBooks({required String Search})async{
    emit(SearchScreenLoading());
    var result = await homeRepo.fetchSearchedBooks(Search: Search);

    result.fold((failure) {
      emit(SearchScreenFailure(failure.errMessage));
    }, (books) {
         emit(SearchScreenSuccess(books));
    },);
  }
}
