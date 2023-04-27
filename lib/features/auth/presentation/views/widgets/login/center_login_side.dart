import 'package:codemanchat/core/ersources/strings.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
import 'package:codemanchat/core/widget/custom_textField.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/ersources/colors.dart';
import '../../../../../../core/ersources/fonts.dart';
import '../../../../../../core/ersources/values.dart';
class CenterSideLogin extends StatelessWidget {
   CenterSideLogin({Key? key}) : super(key: key);
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: Sized.s5,
        ),
        CustomTextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: Strings.email
        ),
        SizedBox(
          height: Sized.s5,
        ),
        CustomTextField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            hintText: Strings.password
        ),
        SizedBox(
          height: Sized.s2,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: CustomText(
            text: Strings.forgetPassword,
            fontWeight: FontWeightManager.semiBold,
            fontSize: 14,
            color: ColorManager.primary,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(
          height: Sized.s5,
        ),
      ],
    );
  }
}
