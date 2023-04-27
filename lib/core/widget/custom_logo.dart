import 'package:codemanchat/core/ersources/fonts.dart';
import 'package:codemanchat/core/ersources/images.dart';
import 'package:codemanchat/core/ersources/strings.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class CustomLogo extends StatelessWidget {
  const CustomLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Images.logo,
          height: Sized.s15,
        ),
        CustomText(
          text: Strings.chat,
              fontSize: 15.sp,
              fontWeight: FontWeightManager.bold

        ),

      ],
    );
  }
}
