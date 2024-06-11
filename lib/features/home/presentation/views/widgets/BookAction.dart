import 'package:bookly/core/utils/functions/launchUrl.dart';
import 'package:bookly/core/widgets/CustomButton.dart';
import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.item});
  final Items item;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children: [
          const Expanded(
              child: CustomButton(
                TextContent: "Free",
                BackGroundColor: Colors.white,
                TextColor: Colors.black,
                borderRadius:  BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
              )),
          Expanded(
              child: CustomButton(
                onPressed: () async{
                    luanchCustomUrl(context,item.volumeInfo!.previewLink!);
                },
                fontSize: 16,
                TextContent:  getText(item),
                BackGroundColor: const Color(0xffEF8262),
                TextColor: Colors.white,
                borderRadius: const BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
              )),
        ],
      ),
    );
  }

  String getText(Items item) {
    if(item.volumeInfo!.previewLink! == null){
      return "Not Available";
    }else{
      return "Preview";
    }
  }
}

