import 'package:codemanchat/core/ersources/colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
        this.textAlign,
      this.fontSize,
      this.fontWeight,
      this.color,
        this.decoration,
      this.maxLines})
      : super(key: key);
  final String text;
  final TextAlign ?textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDecoration ?decoration;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        decoration:decoration ,
        decorationColor: ColorManager.primary,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
      ),
    );
  }
}
