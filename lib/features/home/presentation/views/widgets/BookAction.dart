import 'package:bookly/core/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children: [
          Expanded(
              child: CustomButton(
                TextContent: "19.99",
                BackGroundColor: Colors.white,
                TextColor: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
              )),
          Expanded(
              child: CustomButton(
                fontSize: 16,
                TextContent: "Free Preview",
                BackGroundColor: Color(0xffEF8262),
                TextColor: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
              )),
        ],
      ),
    );
  }
}
