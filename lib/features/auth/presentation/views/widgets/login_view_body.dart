import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/fonts.dart';
import 'package:codemanchat/core/ersources/strings.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_button.dart';
import 'package:codemanchat/core/widget/custom_logo.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
import 'package:codemanchat/core/widget/custom_textField.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({Key? key}) : super(key: key);
final TextEditingController emailController=TextEditingController();
final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
          top: Sized.s6,
        left: Sized.s4,
        right: Sized.s4
      ),
      children: [
      const  CustomLogo(),
        SizedBox(height:Sized.s8
          ,),
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
        SizedBox(
          height: Sized.s2,
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
        CustomButton(
            backGroundColor: ColorManager.primary,
            textColor: ColorManager.white,
            text: Strings.login),
        SizedBox(
          height: Sized.s3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: Strings.notHaveAccount,
              fontSize:13,
              color: ColorManager.black,
              fontWeight: FontWeightManager.bold,
            ),

            TextButton(
              onPressed: (){

              },
              child: CustomText(
                text: Strings.signUp,
                fontSize:15,
                color: ColorManager.primary,
                fontWeight: FontWeightManager.semiBold,
              ),
            ),
          ],
        ),
      ],
    );
  }


}
