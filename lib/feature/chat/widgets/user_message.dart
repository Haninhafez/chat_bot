import 'package:chat_bot/core/app_color.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/material.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({super.key, required this.Message});

  final String Message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.elliptical(2, -100),
          topLeft: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Text(
        Message,
        style: CustomTextStyle(
          FontW: FontWeight.w600,
        ).copyWith(color: Colors.white, fontSize: 22),
      ),
    );
  }
}
