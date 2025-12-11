import 'package:chat_bot/core/app_color.dart';
import 'package:chat_bot/feature/chat/chat_screen.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatScreen()),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColor.primaryColor,
        ),
        child: Row(
          children: [
            Spacer(),
            Text(
              "Continue",
              style: CustomTextStyle(
                FontW: FontWeight.w400,
              ).copyWith(color: Colors.white),
            ),
            Spacer(),
            Icon(CupertinoIcons.arrow_right, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
