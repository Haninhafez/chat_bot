import 'package:chat_bot/feature/chat/service/cubit/chat_cubit.dart';
import 'package:chat_bot/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class RecordeButton extends StatefulWidget {
  const RecordeButton({super.key, required this.onsend});
  final void Function(String) onsend;

  @override
  State<RecordeButton> createState() => _RecordeButtonState();
}

class _RecordeButtonState extends State<RecordeButton> {
  final stt.SpeechToText speech = stt.SpeechToText();
  bool isListening = false;
  String text = '';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggleRecording();
        if (!isListening) {
          context.read<ChatCubit>().sendMessage(text);
        }
        print("Text is :: $text");
      },
      onDoubleTap: () => widget.onsend(text),
      child: isListening
          ? Icon(CupertinoIcons.circle_fill, color: Colors.red)
          : SvgPicture.asset(Assets.images.microphone, height: 30, width: 30),
    );
  }

  void toggleRecording() async {
    if (!isListening) {
      bool isAvalible = await speech.initialize();
      if (isAvalible) {
        setState(() {
          isListening = true;
        });

        speech.listen(
          onResult: (result) {
            setState(() {});
            text = result.recognizedWords;
          },
        );
      }
    } else {
      setState(() {
        isListening = false;
        speech.stop();
      });
    }
  }
}
