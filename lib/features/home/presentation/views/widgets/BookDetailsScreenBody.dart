import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookRating.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:bookly/features/home/presentation/views/widgets/FeaturedBooksListView.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookImage(),
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            "The Jungle Book",
            style: styles.textStyle30,
          ),
          SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kipling",
              style: styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          SizedBox(height: 18,),
          BookRating(mainAxisAlignment: MainAxisAlignment.center,)
        ],
      ),
    );
  }
}
