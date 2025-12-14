import 'package:chat_bot/feature/chat/widgets/message_countainer.dart';
import 'package:chat_bot/gen/assets.gen.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Explaintion extends StatelessWidget {
  const Explaintion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        SvgPicture.asset(Assets.images.menu, height: 50, width: 50),
        Text(
          "Explain",
          style: CustomTextStyle(FontW: FontWeight.w700).copyWith(fontSize: 22),
        ),

        MessageContainer(messageContainer: 'Explain Quantum physics'),
        MessageContainer(
          messageContainer: 'What are wormholes explain like i am 5',
        ),
      ],
    );
  }
}
