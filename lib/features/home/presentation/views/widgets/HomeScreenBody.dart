import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/BestSellerListViewItem.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/FeaturedBooksListView.dart';
import 'package:bookly/features/home/presentation/views/widgets/HomeScreenBody.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homescreenbody extends StatelessWidget {
  const Homescreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 16,),
          Text("Best Seller",style: styles.textStyle18
            ,),
          SizedBox(height: 20,),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}













