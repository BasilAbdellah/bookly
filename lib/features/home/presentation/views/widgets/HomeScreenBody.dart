import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/BestSellerListView.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/FeaturedBooksListView.dart';
import 'package:flutter/material.dart';

class Homescreenbody extends StatelessWidget {
  const Homescreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics:  BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Newest Books",
                  style: styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ) ,
        ),
        SliverFillRemaining(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.0),
            child: NewestBooksListView(),
          ),
        )
      ],
    );
  }
}

