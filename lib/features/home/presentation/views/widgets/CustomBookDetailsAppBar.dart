import 'package:bookly/core/utils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {
           GoRouter.of(context).push(AppRouter.HomeScreenRoute);
        }, icon: Icon(Icons.close)),
        IconButton(onPressed: () {

        }, icon: Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
