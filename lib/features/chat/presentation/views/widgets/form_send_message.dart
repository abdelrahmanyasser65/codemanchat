import 'package:codemanchat/core/ersources/colors.dart';
import 'package:codemanchat/core/ersources/values.dart';
import 'package:codemanchat/core/widget/custom_textField.dart';
import 'package:codemanchat/features/chat/presentation/view_model/chat_cubit.dart';
import 'package:flutter/material.dart';
class FormSendMessage extends StatelessWidget {
  const FormSendMessage({Key? key, required this.cubit, required this.id}) : super(key: key);
final ChatCubit cubit;
final String id;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          cubit.messageController.text.isNotEmpty
              ? cubit.addMessage(
              val: cubit.messageController.text,
              context: context,
              id: id)
              : null;
        },
        suffixIcon: IconButton(
          onPressed: () {
            cubit.messageController.text.isNotEmpty?  cubit.addMessage(
                val: cubit.messageController.text,
                context: context,
                id: id):null;
          },
          icon: Icon(
            Icons.send,
            color: ColorManager.primary,
          ),
        ),
      ),
    );
  }
}
