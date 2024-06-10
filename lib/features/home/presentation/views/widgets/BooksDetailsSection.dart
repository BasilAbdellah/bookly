import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookAction.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookRating.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=2SDQ7ql9&id=D608A203FF6D2DE15DBFD281CECADF0662BC92E0&thid=OIP.2SDQ7ql9fsUl5e731IEcIwHaMj&mediaurl=https://wallpaperaccess.com/full/8642264.jpg&q=image%20url%20for%20leo%20messi%20in%20world%20cup%201200px&ck=869DCC5288DF56DE44CFDCEEB961DAD0&idpp=rc&idpview=singleimage&form=rc2idp",),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          "The Jungle Book",
          style: styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
