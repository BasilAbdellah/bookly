import 'package:bookly/features/home/presentation/views/widgets/BookDetailsScreenBody.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsScreenBody(),
    );
  }
}
