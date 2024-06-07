import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.BackGroundColor,
     this.borderRadius,required this.TextColor, this.fontSize,
    required this.TextContent});
final Color BackGroundColor;
final Color TextColor;
final String TextContent;
final BorderRadius? borderRadius;
final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius?? BorderRadius.circular(12)),
              backgroundColor: BackGroundColor),
          child: Text(
            TextContent,
            style: styles.textStyle18
                .copyWith(color: TextColor, fontWeight: FontWeight.bold,
                fontSize: fontSize),
          )),
    );
  }
}
