import 'package:chatbot/core/app_color.dart';
import 'package:chatbot/gen/assets.gen.dart';
import 'package:chatbot/shared/custom_commponents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(CupertinoIcons.arrow_left),
            ),
            Assets.images.icon.image(),
            Column(
              children: [
                Text(
                  "ChatBot",
                  style: CustomTextStyle(FontW: FontWeight.bold).copyWith(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "Online",
                  style: CustomTextStyle(
                    FontW: FontWeight.w400,
                  ).copyWith(color: AppColor.onlineColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
