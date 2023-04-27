import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/features/splash/presentation/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SplashViewBody(),
    );
  }
}
