import 'package:codemanchat/core/app_router.dart';
import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/fonts.dart';
import 'package:codemanchat/core/ersources/strings.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_button.dart';
import 'package:codemanchat/core/widget/custom_logo.dart';
import 'package:codemanchat/core/widget/custom_snack_bar.dart';
import 'package:codemanchat/core/widget/custom_text.dart';
import 'package:codemanchat/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:codemanchat/features/auth/presentation/view_model/login_cubit/login_state.dart';
import 'package:codemanchat/features/auth/presentation/views/widgets/login/center_login_side.dart';
import 'package:codemanchat/features/auth/presentation/views/widgets/login/welcome_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        var cubit = LoginCubit();
        return ModalProgressHUD(
          inAsyncCall: state is LoginLoadingState,
          child: ListView(
            padding:
                EdgeInsets.only(top: Sized.s6, left: Sized.s4, right: Sized.s4),
            children: [
              const CustomLogo(),
              SizedBox(
                height: Sized.s8,
              ),
              const WelcomeRow(),
              CenterSideLogin(
                emailController: cubit.emailController,
                passwordController: cubit.passwordController,
              ),
              CustomButton(
                  onPressed: () {
                    (cubit.emailController.text.isNotEmpty &&
                            cubit.passwordController.text.isNotEmpty)
                        ? cubit.loginWithEmailPassword(context)
                        : showSnackBar(
                            context: context, text: "Enter Your data");
                  },
                  backGroundColor: ColorManager.primary,
                  textColor: ColorManager.white,
                  text: Strings.login),
              SizedBox(
                height: Sized.s2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: Strings.notHaveAccount,
                    fontSize: 13,
                    color: ColorManager.black,
                    fontWeight: FontWeightManager.bold,
                  ),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.rSignUp);
                    },
                    child: CustomText(
                      text: Strings.signUp,
                      fontSize: 15,
                      color: ColorManager.primary,
                      fontWeight: FontWeightManager.semiBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
