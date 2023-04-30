import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/firebase/firebase_constants.dart';
import 'package:codemanchat/core/widget/custom_textField.dart';
import 'package:codemanchat/features/chat/presentation/view_model/chat_cubit.dart';
import 'package:codemanchat/features/chat/presentation/views/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        var cubit = ChatCubit();
        return StreamBuilder<QuerySnapshot>(
          stream: cubit.messages.orderBy(
            FireBaseConstant.createdAt
          )
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<QueryDocumentSnapshot<Object?>> docSnapList =
                  snapshot.data?.docs ?? [];
              final List docList = docSnapList
                  .map((QueryDocumentSnapshot<Object?>
                          queryDocumentSnapshot) =>
                      queryDocumentSnapshot.data())
                  .toList();

              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: docList.length,
                      //reverse: true,
                      //snapshot.data!.docs[index]['message']
                      itemBuilder: (context, index) {
                        return ChatBubble(text:docList[index]['text'] );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Sized.s2,
                        right: Sized.s2,
                        top: Sized.s1,
                        bottom: Sized.s2),
                    child: CustomTextField(
                      controller: cubit.messageController,
                      keyboardType: TextInputType.text,
                      hintText: 'Message',
                      onSubmitted: (val) {
                        cubit.addMessage(val);
                        cubit.messageController.text='';
                      },
                      suffixIcon: IconButton(
                        onPressed: () {
                          cubit.addMessage(cubit.messageController.text);
                          cubit.messageController.text='';
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                        icon: Icon(
                          Icons.send,
                          color: ColorManager.primary,
                        ),
                      ),
                    ),
                  )
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
