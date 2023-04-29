import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitialState());
  bool isTyping=false;
  final TextEditingController messageController=TextEditingController();



}
