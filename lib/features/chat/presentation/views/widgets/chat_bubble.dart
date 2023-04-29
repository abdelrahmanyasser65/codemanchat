import 'package:codemanchat/core/ersources/fonts.dart';
import 'package:flutter/material.dart';

import '../../../../../core/ersources/colors.dart';
import '../../../../../core/ersources/values.dart';
import '../../../../../core/widget/custom_text.dart';
class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(
           Sized.s2
        ),
        margin: EdgeInsets.only(
            top: Sized.s2,
            left: Sized.s2,
            right: Sized.s2,
        ),
        decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Sized.s2),
              topRight: Radius.circular(Sized.s2),
              bottomRight:Radius.circular(Sized.s2),
            )
        ),

        child: CustomText(

          text: text,
          color: ColorManager.white,
          fontWeight: FontWeightManager.semiBold,
        ),
      ),
    );
  }
}
