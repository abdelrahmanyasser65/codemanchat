import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/fonts.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_logo.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
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
             text: "Welcome",
             fontSize:30,
             color: ColorManager.black,
             fontWeight: FontWeightManager.semiBold,
           ),
           SizedBox(width: Sized.s1,),
           CustomText(
             text: "Back!",
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
          text: "Login",
          fontSize:18,
          color: ColorManager.black,
          fontWeight: FontWeightManager.medium,
        ),

      ],
    );
  }


}
