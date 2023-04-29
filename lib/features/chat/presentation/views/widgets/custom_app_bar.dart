import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/fonts.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends PreferredSize{
  const CustomAppBar({super.key, required super.child,
    required super.preferredSize});



  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primary,
      title:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: "CodeMan ",
            color: ColorManager.white,
            fontSize: 18,
            fontWeight: FontWeightManager.semiBold,
          ),
          Icon(Icons.code,color: ColorManager.white,size: 30,),
          CustomText(
            text: " chat",
            color: ColorManager.white,
            fontSize: 17,
            fontWeight: FontWeightManager.semiBold,
          ),
        ],
      ),
      centerTitle: true,
    );
  }

}
