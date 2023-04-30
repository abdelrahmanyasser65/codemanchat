import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_textField.dart';
import 'package:codemanchat/features/chat/data/message_model.dart';
import 'package:codemanchat/features/chat/presentation/view_model/chat_cubit.dart';
import 'package:codemanchat/features/chat/presentation/views/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatViewBody extends StatelessWidget {
  ChatViewBody({Key? key,}) : super(key: key);
  TextEditingController controller = TextEditingController();
  CollectionReference messages =
  FirebaseFirestore.instance.collection("messages");

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        var cubit=ChatCubit();
        return FutureBuilder<QuerySnapshot>(
          future: cubit.messages.get(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return ChatBubble(text:snapshot.data!.docs[0]['message']);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Sized.s2,
                        right: Sized.s2,
                        top: Sized.s1,
                        bottom: Sized.s2
                    ),
                    child: CustomTextField(
                      controller: controller,
                      //cubit.messageController,
                      keyboardType: TextInputType.text,
                      hintText: 'Message',
                      onSubmitted: (val) {
                        //cubit.addMessage(val);
                      },
                      suffixIcon: IconButton(
                        onPressed: () {
                          // cubit.addMessage(cubit.messageController.text);
                        },
                        icon: Icon(Icons.send
                          , color: ColorManager.primary,
                        ),
                      ),
                    ),
                  )
                ],
              );
            }else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },

        );
      },
    );
  }
}
