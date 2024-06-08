import 'package:bookly/core/error/failures.dart';
import 'package:bookly/features/home/data/models/BookModel/BookModel.dart';
import 'package:bookly/features/home/data/repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';


class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}