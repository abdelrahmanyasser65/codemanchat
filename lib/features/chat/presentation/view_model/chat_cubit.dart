import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codemanchat/core/firebase/firebase_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitialState());
  bool isTyping = false;
  final scrollController = ScrollController();
  final TextEditingController messageController = TextEditingController();
  CollectionReference messages =
      FirebaseFirestore.instance.collection(FireBaseConstant.messageCollection);

  addMessage({val, context, id}) {
    messages.add({
      'createdAt': DateTime.now(),
      'text': val,
      'id':id,
    });
    messageController.text = '';
    FocusScope.of(context).requestFocus(FocusNode());
    scrollController.animateTo(
        0,
        duration:const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn);
  }
}
