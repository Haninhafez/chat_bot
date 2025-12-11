import 'package:chat_bot/core/app_color.dart';
import 'package:chat_bot/shared/custom_commponents.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextOnBording extends StatelessWidget {
  const TextOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Text(
          "You AI Assistant",
          style: GoogleFonts.nunito(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryColor,
          ),
        ),
        Text(
          """Using this software,you can ask you
questions and receive articles using
artificial intelligence assistant""",
          style: CustomTextStyle(FontW: FontWeight.w300),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
