import 'package:chat_bot/feature/start/widgets/continue_button.dart';
import 'package:chat_bot/feature/start/widgets/text_onbording.dart';
import 'package:chat_bot/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextOnBording(),
              Assets.images.startingImage.image(fit: BoxFit.cover),
              ContinueButton(),
            ],
          ),
        ),
      ),
    );
  }
}
