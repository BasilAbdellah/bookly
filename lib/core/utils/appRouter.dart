import 'package:bookly/core/utils/ServiceLocator.dart';
import 'package:bookly/core/utils/apiService.dart';
import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:bookly/features/home/data/repos/HomeRepoImpl.dart';
import 'package:bookly/features/home/presentation/manager/SimilarBooksCubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/BookDetailsScreen.dart';
import 'package:bookly/features/home/presentation/views/HomeScreen.dart';
import 'package:bookly/features/search/presentation/manager/SearchScreenCubit/search_screen_cubit.dart';
import 'package:bookly/features/search/presentation/views/SearchScreen.dart';
import 'package:bookly/features/splash/presentation/views/SplashScreen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter {
  static const String HomeScreenRoute = "/homeScreen";
  static const String BookDetailsRoute = "/bookDetails";
  static const String Searchscreen = "/searchScreen";

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splashscreen(),
    ),
    GoRoute(
      path: HomeScreenRoute,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: Searchscreen,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(

            create: (BuildContext context) {
              return SearchScreenCubit(HomeRepoImpl(ApiService(Dio())));
            },
            child: const SearchScreen());
      },
    ),
    GoRoute(
      path: BookDetailsRoute,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child:  BookDetailsScreen(
            items: state.extra as Items,
          )),
    ),
  ]);
}
