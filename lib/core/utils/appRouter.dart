import 'package:bookly/features/home/presentation/views/BookDetailsScreen.dart';
import 'package:bookly/features/home/presentation/views/HomeScreen.dart';
import 'package:bookly/features/search/presentation/views/SearchScreen.dart';
import 'package:bookly/features/splash/presentation/views/SplashScreen.dart';
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
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: BookDetailsRoute,
      builder: (context, state) => const BookDetailsScreen(),
    ),
  ]);
}
