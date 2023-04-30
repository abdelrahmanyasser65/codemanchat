import 'package:codemanchat/core/app_router.dart';
import 'package:codemanchat/core/ersources/images.dart';
import 'package:codemanchat/core/widget/custom_snack_bar.dart';
import 'package:codemanchat/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';
import 'package:codemanchat/features/auth/presentation/views/widgets/sign_up/center_sign_up_side.dart';
import 'package:codemanchat/features/auth/presentation/views/widgets/sign_up/first_side_sign_up.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../../core/ersources/colors.dart';
import '../../../../../../core/ersources/fonts.dart';
import '../../../../../../core/ersources/strings.dart';
import '../../../../../../core/ersources/values.dart';
import '../../../../../../core/widget/custom_button.dart';
import '../../../../../../core/widget/custom_logo.dart';
import '../../../../../../core/widget/custom_text.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        var cubit = SignUpCubit();

        return ModalProgressHUD(

          inAsyncCall:state is SignUpLoadingState,
          child: ListView(
            padding:
                EdgeInsets.only(top: Sized.s6, left: Sized.s4, right: Sized.s4),
            children: [
              const CustomLogo(),
              SizedBox(
                height: Sized.s8,
              ),
              const FireSideSignUp(),
              CenterSideSignUp(
                nameController: cubit.nameController,
                emailController: cubit.emailController,
                passwordController: cubit.passwordController,
              ),
              CustomButton(
                  onPressed: () {
                    (cubit.emailController.text.isNotEmpty &&
                            cubit.passwordController.text.isNotEmpty)
                        ? cubit.signUpWithEmailPassword(context)
                        :showSnackBar(
                            context: context, text: "Enter your data");
                  },
                  backGroundColor: ColorManager.primary,
                  textColor: ColorManager.white,
                  text: Strings.signUp),
              SizedBox(
                height: Sized.s1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: Strings.alreadyHaveAccount,
                    fontSize: 13,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.bold,
                  ),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.rLoginView);
                    },
                    child: CustomText(
                      text: Strings.login,
                      fontSize: 15,
                      color: ColorManager.primary,
                      fontWeight: FontWeightManager.semiBold,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "OR sign up with ",
                    fontSize: 16,
                    fontWeight: FontWeightManager.semiBold,
                    color: ColorManager.primary,
                  ),
                  TextButton(
                      onPressed: () {
                        cubit.signUpWithGoogle(context);
                      },
                      child: Image.asset(
                        Images.googleIcon,
                        fit: BoxFit.cover,
                        width: Sized.s3,
                      ))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
