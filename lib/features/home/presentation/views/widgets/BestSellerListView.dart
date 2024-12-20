import 'package:bookly/core/widgets/CustomErrorWidget.dart';
import 'package:bookly/core/widgets/CustomProgressIndicator.dart';
import 'package:bookly/features/home/presentation/manager/NewestBooksCubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
         if(state is NewestBooksSuccess){
           return ListView.builder(

             physics: const NeverScrollableScrollPhysics(),
             itemCount: state.books.length,
             padding: EdgeInsets.zero,
             itemBuilder: (context, index) {
               return  Padding(
                 padding: EdgeInsets.symmetric(vertical: 10.0),
                 child: BookListViewItem(
                   items: state.books[index],
                 ),
               );
             },
           );
         }else if(state is NewestBooksFailure){
           return CustomErrorWidget(errMessage: state.errMessage);
         }else{
           return const CustomProgressIndicator();
         }
      },
    );
  }
}
