import 'package:codemanchat/core/ersources/strings.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
import 'package:codemanchat/core/widget/custom_textField.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/ersources/colors.dart';
import '../../../../../../core/ersources/fonts.dart';
import '../../../../../../core/ersources/values.dart';
class CenterSideSignUp extends StatelessWidget {
 const CenterSideSignUp({Key? key, required this.nameController, required this.passwordController, required this.emailController}) : super(key: key);
 final TextEditingController nameController;
 final TextEditingController passwordController;
 final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: Sized.s5,
        ),
        CustomTextField(
            controller: nameController,
            keyboardType: TextInputType.name,
            hintText: Strings.name
        ),
        SizedBox(
          height: Sized.s4,
        ),
        CustomTextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: Strings.email
        ),
        SizedBox(
          height: Sized.s4,
        ),
        CustomTextField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            hintText: Strings.password
        ),

        SizedBox(
          height: Sized.s5,
        ),
      ],
    );
  }
}
