part of 'sign_up_cubit.dart';

abstract class SignUpState {}

class SignUpInitialState extends SignUpState {}
class SignUpLoadingState extends SignUpState{}
class SignUpSuccessState extends SignUpState{
  // final List user;
  // SignUpSuccess(this.user);
}
class SignUpErrorState extends SignUpState{
  final String errorMessage;
  SignUpErrorState(this.errorMessage);
}
