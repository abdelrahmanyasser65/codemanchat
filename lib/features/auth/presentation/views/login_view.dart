import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: LoginViewBody(),
      ),
    );
  }
}
