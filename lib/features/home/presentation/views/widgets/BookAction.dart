import 'package:bookly/core/widgets/CustomButton.dart';
import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.item});
  final Items item;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children: [
          Expanded(
              child: CustomButton(
                TextContent: "19.99",
                BackGroundColor: Colors.white,
                TextColor: Colors.black,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
              )),
          Expanded(
              child: CustomButton(
                onPressed: () async{
                  Uri uri = Uri.parse(item.volumeInfo!.previewLink!);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }else{
                    throw Exception('Could not launch $uri');

                  }
                },
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
