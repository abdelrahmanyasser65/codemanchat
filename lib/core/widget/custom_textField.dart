import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      this.onChanged,
      required this.keyboardType,
        this.maxLines=1,
        required this.hintText,
       this.obscureText=false})
      : super(key: key);
  final TextEditingController controller;
  final Function(String)? onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  final int maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      cursorColor: ColorManager.grey,
      obscureText: obscureText,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 15, color: ColorManager.hintTextColor),
        fillColor: ColorManager.lightGrey,
        filled: true,
        contentPadding:
            EdgeInsets.symmetric(vertical: Sized.s1, horizontal: Sized.s2),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        disabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }
}