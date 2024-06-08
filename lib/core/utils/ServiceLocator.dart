import 'package:bookly/core/utils/apiService.dart';
import 'package:bookly/features/home/data/repos/HomeRepoImpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
     getIt.get<ApiService>()
  ));
}