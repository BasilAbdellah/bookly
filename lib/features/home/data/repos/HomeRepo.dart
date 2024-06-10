import 'package:bookly/core/error/failures.dart';
import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<Items>>> fetchNewestBooks();
 Future<Either<Failure,List<Items>>> fetchFeaturedBooks();
 Future<Either<Failure,List<Items>>> fetchSimilarBooks({required String category});
}