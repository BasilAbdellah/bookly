import 'package:bookly/core/widgets/CustomErrorWidget.dart';
import 'package:bookly/core/widgets/CustomProgressIndicator.dart';
import 'package:bookly/features/home/presentation/manager/SimilarBooksCubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if(state is SimilarBooksSuccess){
      return SizedBox(
        height: MediaQuery.of(context).size.height*.15,
        child: ListView.builder(
          itemCount: state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(
                  imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!
            ));
          },),
      );

    }else if(state is SimilarBooksFailure){
      return CustomErrorWidget(errMessage: state.errMessage);
    }else{
      return const CustomProgressIndicator();
    }
  },
);
  }
}
