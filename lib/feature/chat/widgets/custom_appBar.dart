import 'package:chat_bot/core/app_color.dart';
import 'package:chat_bot/gen/assets.gen.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffECECEC))),
      ),
      child: Row(
        spacing: 10,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(CupertinoIcons.arrow_left),
          ),
          Assets.images.icon.image(height: 40, width: 30, fit: BoxFit.cover),
          Column(
            children: [
              Text(
                "ChatBot",
                style: CustomTextStyle(
                  FontW: FontWeight.bold,
                ).copyWith(color: AppColor.primaryColor, fontSize: 24),
              ),
              Row(
                children: [
                  Icon(Icons.circle, color: AppColor.onlineColor, size: 10),
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
          Spacer(),
          Assets.images.volumehighPng.image(
            height: 30,
            width: 30,
            fit: BoxFit.cover,
          ),

          Assets.images.export.image(height: 30, width: 30, fit: BoxFit.cover),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
