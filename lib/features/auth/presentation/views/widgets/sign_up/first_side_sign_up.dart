import 'package:codemanchat/core/ersources/strings.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/ersources/colors.dart';
import '../../../../../../core/ersources/fonts.dart';
import '../../../../../../core/widget/custom_text.dart';
class FireSideSignUp extends StatelessWidget {
  const FireSideSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        CustomText(
          text: Strings.signUp,
          color: ColorManager.primary,
          fontSize: 26,
          fontWeight: FontWeightManager.bold,
        ),
        SizedBox(height: Sized.sh5,),
        CustomText(
          text: Strings.createAccount,
          fontWeight: FontWeightManager.medium,
          fontSize: 15,
          color: ColorManager.subTitleColor,
        ),
      ],
    );
  }
}
