import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/BestSellerListViewItem.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookRating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              width: 100,
              height: MediaQuery.of(context).size.height * .25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AssetsData.image,
                      ))),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Harry Potter and the Goblet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: styles.textStyle20.copyWith(
                        fontFamily: styles.GTSectraFine,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "J.K Rowling",
                    style: styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "19.99",
                        style: styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      BookRating()
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


