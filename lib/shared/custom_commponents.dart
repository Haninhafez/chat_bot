import 'dart:ui';
import 'package:chat_bot/core/app_color.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle CustomTextStyle({required FontWeight FontW}) {
  return GoogleFonts.nunito(
    fontSize: 20,
    color: AppColor.textColor,
    fontWeight: FontW,
  );
}
