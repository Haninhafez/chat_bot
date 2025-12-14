import 'package:chat_bot/core/app_color.dart';
import 'package:chat_bot/feature/chat/service/cubit/chat_cubit.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({super.key, required this.messageContainer});
  final String messageContainer;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ChatCubit>().sendMessage(messageContainer);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.messageColor,
          borderRadius: BorderRadius.circular(20),
        ),
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(left: 15, right: 15),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text(
          messageContainer,
          style: CustomTextStyle(
            FontW: FontWeight.w400,
          ).copyWith(color: AppColor.textColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
