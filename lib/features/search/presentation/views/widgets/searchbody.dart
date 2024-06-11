import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/manager/SearchScreenCubit/search_screen_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/CustomTextField.dart';
import 'package:bookly/features/search/presentation/views/widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String text='';

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(
            onChanged: (val){
              if(val == null){
                 Center(child: Icon(Icons.error),);
              }else{
                text=val;
              };
              setState(() {
                BlocProvider.of<SearchScreenCubit>(context)
                    .fetchSearchedBooks(Search: text);
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Search result",
            style: styles.textStyle18,
          ),
          const SizedBox(
            height: 8,
          ),
          const Expanded(child: SearchResultListView())

        ],
      ),
    );
  }
}