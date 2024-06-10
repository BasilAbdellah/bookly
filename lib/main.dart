import 'package:bookly/core/utils/ServiceLocator.dart';
import 'package:bookly/core/utils/appRouter.dart';
import 'package:bookly/features/home/data/repos/HomeRepoImpl.dart';
import 'package:bookly/features/home/presentation/manager/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/NewestBooksCubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:[
        BlocProvider(create: (context)=>FeaturedBooksCubit(
          getIt.get<HomeRepoImpl>()
        )..fetchFeaturedBooks()),
        BlocProvider(create: (context)=>NewestBooksCubit(
          getIt.get<HomeRepoImpl>()
        )..fetchNewestBooks()
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color(0xff100B20),
            textTheme: GoogleFonts.montserratTextTheme(ThemeData
                .dark()
                .textTheme)
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


