import 'package:bookly/core/utils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color(0xff100B20),
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        ),
        debugShowCheckedModeBanner: false,
      ) ;
  }
}


