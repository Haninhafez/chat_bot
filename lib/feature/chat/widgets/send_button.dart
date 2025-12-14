import 'package:chat_bot/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key, required this.controller, required this.onSend});

  final TextEditingController controller;
  final void Function(String message) onSend;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSend(controller.text);
        controller.clear();
      },
      child: SvgPicture.asset(Assets.images.send, height: 30, width: 30),
    );
  }
}
