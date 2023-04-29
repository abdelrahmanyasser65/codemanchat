part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatInitialState extends ChatState {}
class ChatSuccessState extends ChatState {}
class ChatLoadingState extends ChatState {}
class ChatErrorState extends ChatState {
  final String errorMessage;
   ChatErrorState(this.errorMessage);
}
class CheckMessage extends ChatState{}
