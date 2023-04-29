import 'package:codemanchat/features/chat/presentation/views/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
class ChatViewBody extends StatelessWidget {
  const ChatViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemBuilder: (context,index){
        return ChatBubble(text: "hello");
      },
    );
  }
}
