import 'package:codemanchat/core/app_router.dart';
import 'package:codemanchat/core/widget/custom_snack_bar.dart';
import 'package:codemanchat/features/auth/presentation/view_model/login_cubit/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
      GoRouter.of(context).pushReplacement(AppRouter.rChat);
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

  void signUpWithGoogle() async {
    var auth = FirebaseAuth.instance;
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleSignInAccount = await googleSignIn
        .signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!
        .authentication;
    AuthCredential authCredential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    UserCredential authResult = await auth.signInWithCredential(
        authCredential);
    User? user = authResult.user;
  }
}
