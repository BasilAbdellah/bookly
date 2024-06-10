import 'package:bookly/features/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=2SDQ7ql9&id=D608A203FF6D2DE15DBFD281CECADF0662BC92E0&thid=OIP.2SDQ7ql9fsUl5e731IEcIwHaMj&mediaurl=https://wallpaperaccess.com/full/8642264.jpg&q=image%20url%20for%20leo%20messi%20in%20world%20cup%201200px&ck=869DCC5288DF56DE44CFDCEEB961DAD0&idpp=rc&idpview=singleimage&form=rc2idp"),
          );
        },),
    );
  }
}
