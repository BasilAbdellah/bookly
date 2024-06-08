import 'package:bookly/core/error/failures.dart';
import 'package:bookly/features/home/data/models/BookModel/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}