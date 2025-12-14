import 'package:chat_bot/core/app_color.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/material.dart';

class MessageTextFormField extends StatelessWidget {
  const MessageTextFormField({
    super.key,
    required this.controller,
    required this.onSend,
  });

  final TextEditingController controller;
  final void Function(String) onSend;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: TextFormField(
        onFieldSubmitted: (value) {
          onSend(value);
          controller.clear();
        },
        controller: controller,
        style: CustomTextStyle(
          FontW: FontWeight.w800,
        ).copyWith(color: AppColor.primaryColor, fontSize: 22),
        decoration: InputDecoration(
          hint: Text(
            "Write Your Message",
            style: CustomTextStyle(
              FontW: FontWeight.w700,
            ).copyWith(color: AppColor.secondaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
