import 'package:chat_bot/feature/chat/chat_screen.dart';
import 'package:chat_bot/feature/chat/service/ai_response_service.dart';
import 'package:chat_bot/feature/start/splash_screen.dart';
import 'package:chat_bot/feature/start/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  AiResponseService res = AiResponseService();
  res.aiResponse("where is egypt?");
  runApp(ChatBot());
}

class ChatBot extends StatelessWidget {
  const ChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
