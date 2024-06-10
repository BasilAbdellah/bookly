import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:bookly/features/home/presentation/views/widgets/BooksDetailsSection.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/SimilarBooksSection.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key, required this.items});
  final Items items;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BooksDetailsSection(book:items),
                const Expanded(
                    child:  SizedBox(
                  height: 50,
                )),
               const  SimilarBooksSection(),
                const  SizedBox(
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


