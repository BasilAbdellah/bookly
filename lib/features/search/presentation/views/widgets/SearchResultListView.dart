import 'package:bookly/core/widgets/CustomErrorWidget.dart';
import 'package:bookly/core/widgets/CustomProgressIndicator.dart';
import 'package:bookly/features/search/presentation/manager/SearchScreenCubit/search_screen_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/SearchListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchScreenCubit, SearchScreenState>(
      builder: (context, state) {
        if(state is SearchScreenSuccess){
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.items.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const  EdgeInsets.symmetric(vertical: 10.0),
                  child: Searchlistviewitem( items:state.items[index]),
              );
            },
          );
        }else if(state is SearchScreenFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
