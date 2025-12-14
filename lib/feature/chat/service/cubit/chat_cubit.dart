import 'package:bloc/bloc.dart';
import 'package:chat_bot/feature/chat/data/model.dart';
import 'package:chat_bot/feature/chat/service/ai_response_service.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this.aiResponseService) : super(ChatInitial());
  final AiResponseService aiResponseService;
  final List<MessageModel> messages = [];

  Future<void> sendMessage(String text) async {
    messages.add(MessageModel(message: text, isUser: true));
    emit(ChatSeccusse(chatMessages: List.from(messages)));
    emit(ChatLoading(chatMessages: List.from(messages)));
    try {
      final String reply = await aiResponseService.aiResponse(text);
      print(reply);
      messages.add(MessageModel(message: reply, isUser: false));
      emit(ChatSeccusse(chatMessages: List.from(messages)));
    } catch (e) {
      emit(ChatError(errorMessage: e.toString()));
    }
  }
}
