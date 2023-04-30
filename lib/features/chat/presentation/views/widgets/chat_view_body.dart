import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/firebase/firebase_constants.dart';
import 'package:codemanchat/core/widget/custom_textField.dart';
import 'package:codemanchat/features/chat/presentation/view_model/chat_cubit.dart';
import 'package:codemanchat/features/chat/presentation/views/widgets/chat_bubble.dart';
import 'package:codemanchat/features/chat/presentation/views/widgets/form_send_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        var cubit = ChatCubit();
        return StreamBuilder<QuerySnapshot>(
          stream: cubit.messages
              .orderBy(
                FireBaseConstant.createdAt,
                descending: true,
              )
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<QueryDocumentSnapshot<Object?>> docSnapList =
                  snapshot.data?.docs ?? [];
              final List docList = docSnapList
                  .map((QueryDocumentSnapshot<Object?> queryDocumentSnapshot) =>
                      queryDocumentSnapshot.data())
                  .toList();

              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: cubit.scrollController,
                      itemCount: docList.length,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return
                          docList[index]['id']==id?
                          ChatBubble(text: docList[index]['text']):
                              AnotherChatBubble(text: docList[index]['text'])
                        ;
                      },
                    ),
                  ),
                  FormSendMessage(cubit: cubit, id: id),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        );
      },
    );
  }
}
