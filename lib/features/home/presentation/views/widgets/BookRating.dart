import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       const  Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
      const Text(
          "4.8",
          style: styles.textStyle16,
        ),
        const SizedBox(width: 5,),
        Text(
          "(230)",
          style: styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}