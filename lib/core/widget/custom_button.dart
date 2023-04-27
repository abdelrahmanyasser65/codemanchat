import 'package:codemanchat/core/ersources/fonts.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.backGroundColor, required this.textColor, this.borderRadius, required this.text, this.fontSize, this.onPressed}) : super(key: key);
final Color backGroundColor;
final Color textColor;
final BorderRadius?borderRadius;
final String text;
final double ?fontSize;
final void Function()?onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sized.s6,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius??BorderRadius.circular(15),
          )
        ),
        onPressed: onPressed,
        child: CustomText(
          text: text,
          textStyle: TextStyle(
            color:textColor,
            fontSize: fontSize,
            fontWeight: FontWightManager.bold,
          ),
        ),
      ),
    );
  }
}
