import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8/4,
      child: Container(

        width: 100,
        height: MediaQuery.of(context).size.height *.25,
        decoration:  BoxDecoration(
          color: Colors.lime,
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.image,))
        ),
      ),
    );
  }
}