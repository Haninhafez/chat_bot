part of 'chat_cubit.dart';

@immutable
sealed class ChatState {}

final class ChatInitial extends ChatState {}

final class ChatLoading extends ChatState {
  final List<MessageModel> chatMessages;
  ChatLoading({required this.chatMessages});
}

final class ChatSeccusse extends ChatState {
  final List<MessageModel> chatMessages;
  ChatSeccusse({required this.chatMessages});
}

final class ChatError extends ChatState {
  final String? errorMessage;
  ChatError({this.errorMessage});
}
