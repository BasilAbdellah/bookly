import 'package:bookly/features/home/presentation/views/widgets/BooksDetailsSection.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/SimilarBooksSection.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BooksDetailsSection(),
                Expanded(
                    child: const SizedBox(
                  height: 50,
                )),
                SimilarBooksSection(),
                 SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


