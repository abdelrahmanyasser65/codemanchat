import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/features/auth/presentation/views/widgets/sign_up/sign_up_view_body.dart';
import 'package:flutter/material.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.white,
      body:const SafeArea(
        child: SignUpViewBody(),
      ),
    );
  }
}
