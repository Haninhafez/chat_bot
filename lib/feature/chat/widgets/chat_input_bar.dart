import 'package:chat_bot/feature/chat/service/cubit/chat_cubit.dart';
import 'package:chat_bot/feature/chat/widgets/message_textFormField.dart';
import 'package:chat_bot/feature/chat/widgets/recorde_button.dart';
import 'package:chat_bot/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ChatInPutBar extends StatelessWidget {
  const ChatInPutBar({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                blurRadius: 10,
                spreadRadius: 15,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            children: [
              MessageTextFormField(
                controller: controller,
                onSend: (String p1) {
                  context.read<ChatCubit>().sendMessage(p1);
                },
              ),
              RecordeButton(
                onsend: (String p1) {
                  context.read<ChatCubit>().sendMessage(p1);
                },
              ),

              SizedBox(width: MediaQuery.of(context).size.width * 0.03),

              GestureDetector(
                onTap: () {
                  context.read<ChatCubit>().sendMessage(controller.text);
                  controller.clear();
                },
                child: SvgPicture.asset(
                  Assets.images.send,
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
