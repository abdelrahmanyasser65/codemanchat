import 'package:codemanchat/core/widget/custom_snack_bar.dart';
import 'package:codemanchat/features/auth/presentation/view_model/login_cubit/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void>login()async{
    UserCredential userCredential=await FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text);
  }

  Future<void>loginWithEmailPassword(BuildContext context)async{
    emit(LoginLoadingState());
    try{
      await login();
      emit(LoginSuccessState());
      showSnackBar(context: context, text: "Success");
    }on FirebaseAuthException catch(e){
      if (e.code == "wrong-password") {
        showSnackBar(
            context: context, text: "wrong password");
      }
      else if (e.code == "invalid-email") {
        showSnackBar(context: context,
            text: "The email address is not valid");
      }
      else if(e.code=="user-not-found"){
        showSnackBar(context: context,
            text: "no user corresponding to the given email");

      }
      emit(LoginErrorState(e.toString()));
    }
  }
}
