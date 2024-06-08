import 'package:bookly/features/search/presentation/views/widgets/SearchScreenBody.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchScreenBody(),
      ),
    );
  }
}