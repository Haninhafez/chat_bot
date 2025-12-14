import 'package:chat_bot/feature/chat/data/model.dart';
import 'package:chat_bot/feature/chat/service/cubit/chat_cubit.dart';
import 'package:chat_bot/feature/chat/widgets/switch_message.dart';
import 'package:chat_bot/feature/chat/widgets/user_message.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key, required this.messages});

  final List<MessageModel> messages;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        if (state is ChatSeccusse) {
          return Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 25),
            child: ListView.builder(
              itemCount: state.chatMessages.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SwitchMessage(messageModel: state.chatMessages[index]),
                  ],
                );
              },
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}

class LoadingChat extends StatelessWidget {
  const LoadingChat({super.key, required this.messages});

  final List<MessageModel> messages;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        if (state is ChatLoading)
          return Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 25),
            child: ListView.builder(
              itemCount: state.chatMessages.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    UserMessage(Message: messages[index].message!),
                    SizedBox(height: 10),
                    Text(
                      "Ai is Typing",
                      style: CustomTextStyle(
                        FontW: FontWeight.w500,
                      ).copyWith(color: Colors.black),
                    ),
                  ],
                );
              },
            ),
          );
        return SizedBox.shrink();
      },
    );
  }
}
