import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/fonts.dart';
import 'package:codemanchat/core/ersources/strings.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
class WelcomeRow extends StatelessWidget {
  const WelcomeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [

            CustomText(
              text:Strings.welcome ,
              fontSize:30,
              color: ColorManager.black,
              fontWeight: FontWeightManager.semiBold,
            ),
            SizedBox(width: Sized.s1,),
            CustomText(
              text: Strings.back,
              fontSize:30,
              color: ColorManager.primary,
              fontWeight: FontWeightManager.semiBold,
            ),
          ],
        ),
        SizedBox(
          height: Sized.s1,
        ),
        CustomText(
          text:Strings.login,
          fontSize:18,
          color: ColorManager.black,
          fontWeight: FontWeightManager.medium,
        ),
      ],
    );
  }
}
