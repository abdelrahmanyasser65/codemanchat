import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_textField.dart';
import 'package:codemanchat/features/chat/presentation/view_model/chat_cubit.dart';
import 'package:codemanchat/features/chat/presentation/views/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ChatViewBody extends StatelessWidget {
 const  ChatViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<ChatCubit, ChatState>(
  builder: (context, state) {
    var cubit=ChatCubit();
    return Column(
     
      children: [
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemBuilder: (context,index){
              return const  ChatBubble(text: "hello");
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
              controller: cubit.messageController,
              keyboardType: TextInputType.text,
              hintText: 'Message',
            suffixIcon: IconButton(
              onPressed:(){

              },
              icon: Icon(Icons.send
              ,color:ColorManager.primary,
              ),
            ),
          ),
        )
      ],
    );
  },
);
  }
}
