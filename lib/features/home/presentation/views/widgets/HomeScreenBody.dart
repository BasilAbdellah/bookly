import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/FeaturedBooksListView.dart';
import 'package:flutter/material.dart';

class Homescreenbody extends StatelessWidget {
  const Homescreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
       AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(

          width: 100,
          height: MediaQuery.of(context).size.height *.25,
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.image,))
          ),
        ),
      ),
          SizedBox(width:30,),
          SizedBox(
            width: MediaQuery.of(context).size.width*.5,
            child: Column(
              children: [
                Text("Harry Potter and the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis
                  ,style: styles.textStyle20,)
              ],
            ),
          )
        ],
      ),
    );
  }
}









