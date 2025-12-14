import 'dart:async';
import 'package:chat_bot/core/app_color.dart';
import 'package:chat_bot/feature/chat/data/model.dart';
import 'package:chat_bot/feature/chat/service/ai_response_service.dart';
import 'package:chat_bot/feature/chat/service/cubit/chat_cubit.dart';
import 'package:chat_bot/feature/chat/widgets/chat_body.dart';
import 'package:chat_bot/feature/chat/widgets/chat_input_bar.dart';
import 'package:chat_bot/feature/chat/widgets/custom_appBar.dart';
import 'package:chat_bot/feature/chat/widgets/starting_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  AiResponseService aiResponseService = AiResponseService();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(aiResponseService),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 12),
            child: Stack(
              children: [
                Positioned(top: 0, left: 0, right: 0, child: CustomAppBar()),
                Positioned.fill(
                  top: 60,
                  left: 0,
                  right: 0,
                  child: BlocBuilder<ChatCubit, ChatState>(
                    builder: (context, state) {
                      if (state is ChatInitial) {
                        return StartingContent();
                      } else if (state is ChatLoading) {
                        return LoadingChat(messages: state.chatMessages);
                      } else if (state is ChatSeccusse) {
                        return ChatBody(messages: state.chatMessages);
                      } else {
                        return Center(
                          child: CupertinoActivityIndicator(
                            color: AppColor.primaryColor,
                          ),
                        );
                      }
                    },
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: ChatInPutBar(controller: controller),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
