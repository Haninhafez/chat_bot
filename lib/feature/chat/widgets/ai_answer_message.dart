import 'package:chat_bot/core/app_color.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/material.dart';

class AiAnswerMessage extends StatelessWidget {
  const AiAnswerMessage({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.only(right: 30),
      decoration: BoxDecoration(
        color: AppColor.messageColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
          bottomLeft: Radius.elliptical(2, -120),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Text(
        message,
        style: CustomTextStyle(
          FontW: FontWeight.w600,
        ).copyWith(color: AppColor.secondaryColor, fontSize: 22),
      ),
    );
  }
}
