import 'package:codemanchat/core/widget/custom_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitialState());
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading=false;


  Future<void> userSignUp() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text);
  }



  Future<void> signUpWithEmailPassword(BuildContext context) async {
    {
      emit(SignUpLoadingState());
         try {
           await userSignUp();
           emit(SignUpSuccessState());
           showSnackBar(context: context, text: "Success");

         } on FirebaseAuthException catch (e) {

           if (e.code == "weak-password") {
             showSnackBar(
                 context: context, text: "The password provided is too weak");
           }
           else if (e.code == "email-already-in-use") {
             showSnackBar(context: context,
                 text: "The account already exists for that email");
           }
           else if(e.code=="invalid-email"){
             showSnackBar(context: context,
                 text: "Invalid Email");

           }
           emit(SignUpErrorState(e.toString()));
         }
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
    print('email${user!.email}');
  }
}

