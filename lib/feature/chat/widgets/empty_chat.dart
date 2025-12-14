import 'package:chat_bot/feature/chat/widgets/chat_input_bar.dart';
import 'package:chat_bot/feature/chat/widgets/custom_appBar.dart';
import 'package:chat_bot/feature/chat/widgets/starting_content.dart';
import 'package:flutter/material.dart';

class EmptyChat extends StatelessWidget {
  const EmptyChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(top: 60, left: 0, right: 0, child: StartingContent()),
      ],
    );
  }
}
