import 'package:codemanchat/core/app_router.dart';
import 'package:codemanchat/core/ersources/constants.dart';
import 'package:codemanchat/core/ersources/fonts.dart';
import 'package:codemanchat/core/ersources/images.dart';
import 'package:codemanchat/core/ersources/strings.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
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
    return  Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.logo,
            height: Sized.s15,
          ),
          CustomText(
            text: Strings.chat,
            textStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWightManager.bold
            ),
          ),

        ],
      ),
    );
  }
  void navigateToHome()async{
    // AuthProvider authProvider=context.read<AuthProvider>();
    // bool isLoggedIn =await authProvider.isLoggedIn();
    Future.delayed(AppConstants.splashDelay,
            (){
          GoRouter.of(context).push(
           AppRouter.rLoginView
          );
        }
    );

  }
}
