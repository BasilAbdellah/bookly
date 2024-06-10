import 'package:bookly/features/home/data/models/BookModel/Items.dart';
import 'package:bookly/features/home/presentation/manager/SimilarBooksCubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookDetailsScreenBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.items});
  final Items items;
  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category:widget.items.volumeInfo!.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetailsScreenBody(items: widget.items,)),
    );
  }
}
