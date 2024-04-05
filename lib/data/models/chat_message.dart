import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings_flutter/data/models/chat_response.dart';

part 'chat_message.freezed.dart';

@freezed
class ChatMessage with _$ChatMessage {
  factory ChatMessage({
    required String content,
    required bool isMyMessage,
  }) = _ChatMessage;
  const ChatMessage._();

  factory ChatMessage.fromChatResponse(ChatResponse response) {
    return ChatMessage(
      content: response.choices.first.message.content,
      isMyMessage: false,
    );
  }
}
