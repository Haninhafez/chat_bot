import 'package:chat_bot/feature/chat/chat_screen.dart';
import 'package:chat_bot/feature/chat/data/model.dart';
import 'package:chat_bot/feature/chat/widgets/ai_answer_message.dart';
import 'package:chat_bot/feature/chat/widgets/message_countainer.dart';
import 'package:chat_bot/feature/chat/widgets/user_message.dart';
import 'package:flutter/material.dart';

class SwitchMessage extends StatelessWidget {
  const SwitchMessage({super.key, required this.messageModel});
  final MessageModel? messageModel;

  @override
  Widget build(BuildContext context) {
    if (messageModel == null || messageModel!.message == null) {
      return SizedBox(child: Text("Text NOO"));
    } else {
      return messageModel!.isUser == true
          ? UserMessage(Message: messageModel!.message!)
          : AiAnswerMessage(message: messageModel!.message!);
    }
  }
}
