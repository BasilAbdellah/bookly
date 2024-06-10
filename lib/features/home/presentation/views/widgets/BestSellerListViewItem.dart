import 'package:bookly/core/utils/appRouter.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookRating.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.items,});
  final Items items;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.BookDetailsRoute);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
          CustomBookImage(imageUrl: items.volumeInfo!.imageLinks!.thumbnail!),
            const SizedBox(
              width: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(items.volumeInfo!.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: styles.textStyle20.copyWith(
                          fontFamily: styles.GTSectraFine,
                        )),
                    const SizedBox(
                      height: 3,
                    ),
                     Text(
                      items.volumeInfo!.authors![0],
                      style: styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "Free",
                          //Price.toString(),
                          style: styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        BookRating(
                          rating: items.volumeInfo!.averageRating??0 ,
                          count: items.volumeInfo!.ratingsCount??0,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


