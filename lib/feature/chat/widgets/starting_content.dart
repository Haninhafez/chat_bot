import 'package:chat_bot/feature/chat/widgets/editing.dart';
import 'package:chat_bot/feature/chat/widgets/explain.dart';
import 'package:chat_bot/feature/chat/widgets/translation.dart';
import 'package:flutter/material.dart';

class StartingContent extends StatelessWidget {
  const StartingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [SizedBox(height: 10), Explaintion(), Editing(), Translation()],
    );
  }
}
