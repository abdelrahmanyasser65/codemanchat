import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_textField.dart';
import 'package:codemanchat/features/chat/presentation/views/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
class ChatViewBody extends StatelessWidget {
   ChatViewBody({Key? key}) : super(key: key);
final TextEditingController messageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Column(
     
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
              controller: messageController,
              keyboardType: TextInputType.text,
              hintText: 'Message',
            suffixIcon: IconButton(
              onPressed: messageController.text.isNotEmpty?
              (){print("run");}:(){print("no");},
              icon: Icon(Icons.send
              ,color: messageController.text.isNotEmpty?
                ColorManager.primary:ColorManager.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}
