import 'package:chat_bot/feature/chat/widgets/message_countainer.dart';
import 'package:chat_bot/gen/assets.gen.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Translation extends StatelessWidget {
  const Translation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        SvgPicture.asset(Assets.images.translate),
        Text(
          "Translate",
          style: CustomTextStyle(FontW: FontWeight.w700).copyWith(fontSize: 22),
        ),
        MessageContainer(
          messageContainer: 'How do you say “how are you” in korean?',
        ),
        MessageContainer(
          messageContainer: 'Write a poem about flower and love',
        ),
        MessageContainer(messageContainer: 'Write a rap song lyrics about'),
      ],
    );
  }
}
