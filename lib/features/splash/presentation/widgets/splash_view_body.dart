import 'package:codemanchat/core/app_router.dart';
import 'package:codemanchat/core/ersources/constants.dart';
import 'package:codemanchat/core/widget/custom_logo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: CustomLogo(),
    );
  }
  void navigateToHome()async{

    Future.delayed(AppConstants.splashDelay,
            (){
          GoRouter.of(context).pushReplacement(
           AppRouter.rLoginView
          );
        }
    );

  }
}
