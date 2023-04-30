
import 'package:codemanchat/core/firebase/firebase_constants.dart';

class MessageModel{
  final String message;

  MessageModel(this.message);
  factory MessageModel.fromJson(json){
    return MessageModel(json[FireBaseConstant.messageCollection]);
  }
}