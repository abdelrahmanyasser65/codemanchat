import 'package:codemanchat/core/app_router.dart';
import 'package:codemanchat/features/auth/presentation/views/widgets/sign_up/center_sign_up_side.dart';
import 'package:codemanchat/features/auth/presentation/views/widgets/sign_up/first_side_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/ersources/colors.dart';
import '../../../../../../core/ersources/fonts.dart';
import '../../../../../../core/ersources/strings.dart';
import '../../../../../../core/ersources/values.dart';
import '../../../../../../core/widget/custom_button.dart';
import '../../../../../../core/widget/custom_logo.dart';
import '../../../../../../core/widget/custom_text.dart';
import '../login/center_login_side.dart';
import '../login/welcome_row.dart';
class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

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
       const FireSideSignUp(),
        CenterSideSignUp(),
        CustomButton(
            backGroundColor: ColorManager.primary,
            textColor: ColorManager.white,
            text: Strings.signUp),
        SizedBox(
          height: Sized.s2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: Strings.alreadyHaveAccount,
              fontSize:13,
              color: ColorManager.black,
              fontWeight: FontWeightManager.bold,
            ),
            TextButton(
              onPressed: (){
                GoRouter.of(context).push(AppRouter.rLoginView);
              },
              child: CustomText(
                text: Strings.login,
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
