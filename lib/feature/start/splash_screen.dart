import 'package:chat_bot/core/app_color.dart';
import 'package:chat_bot/feature/start/start_screen.dart';
import 'package:chat_bot/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const StartScreen()),
      ),
    );
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(child: Assets.images.logo.image()),
    );
  }
}
