import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
        this.textAlign,
      this.fontSize,
      this.fontWeight,
      this.color,
     required this.textStyle,
      this.maxLines})
      : super(key: key);
  final String text;
  final TextAlign ?textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextStyle textStyle;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: textStyle??TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
      ),
    );
  }
}
