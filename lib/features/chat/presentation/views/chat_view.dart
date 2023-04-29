import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/features/chat/presentation/views/widgets/chat_view_body.dart';
import 'package:flutter/material.dart';
class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.white,
      body:const SafeArea(
        child: ChatViewBody(),
      ),
    );
  }
}
