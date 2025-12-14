import 'package:dio/dio.dart';

class AiResponseService {
  final Dio dio = Dio(
    BaseOptions(headers: {'Content-Type': 'application/json'}),
  );

  Future aiResponse(String text) async {
    try {
      final response = await dio.post(
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent",
        queryParameters: {'key': 'AIzaSyCmsb0ivK6lUZWF3uxCR30tz3TlE-A2yV0'},
        data: {
          "contents": [
            {
              "parts": [
                {"text": text},
              ],
            },
          ],
        },
      );

      return response.data['candidates'][0]['content']['parts'][0]['text'];
    } catch (e) {
      print(e);
    }
  }
}
