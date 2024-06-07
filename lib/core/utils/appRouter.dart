import 'package:bookly/features/home/presentation/views/HomeScreen.dart';
import 'package:bookly/features/splash/presentation/views/SplashScreen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String HomeScreenRoute = "/homeScreen";
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splashscreen(),
    ),
    GoRoute(
      path: HomeScreenRoute,
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
