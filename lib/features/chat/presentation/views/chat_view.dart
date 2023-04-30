import 'package:codemanchat/features/chat/presentation/views/widgets/chat_view_body.dart';
import 'package:codemanchat/features/chat/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/ersources/values.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key, required this.id}) : super(key: key);
final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(
        preferredSize: Size.fromHeight(Sized.s7),
        child: Container(),
      ),
      body:  SafeArea(
        child: ChatViewBody(
          id: id,
        ),
      ),
    );
  }
}
