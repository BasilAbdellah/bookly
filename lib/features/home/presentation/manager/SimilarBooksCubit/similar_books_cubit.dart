import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:bookly/features/home/data/repos/HomeRepo.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo,) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async{
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold((failure){
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books){
      emit(SimilarBooksSuccess(books));
    });
  }
}
