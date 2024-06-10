import 'package:bookly/core/error/failures.dart';
import 'package:bookly/core/utils/apiService.dart';
import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:bookly/features/home/data/repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Items>>> fetchNewestBooks() async{
      try {
        var data = await apiService.get(endPoint:
        "volumes?q=subject:history&Filtering=free-ebooks");
        List<Items> books = [];
        for(var item in data['items']){
          books.add(Items.fromJson(item));
        }
        return right(books);
      }  catch (e) {
        if(e is DioError){
          return left(ServerFailure.fromDioError(e));
        }
        return left(ServerFailure(e.toString()));
      }

  }

  @override
  Future<Either<Failure, List<Items>>> fetchFeaturedBooks() async{
    try {
      var data = await apiService.get(endPoint:
      "volumes?q=subject:Programming&Filtering=free-ebooks");
      List<Items> books = [];
      for(var item in data['items']){
        books.add(Items.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}