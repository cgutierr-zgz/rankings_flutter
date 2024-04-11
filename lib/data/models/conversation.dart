import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings_flutter/data/models/chat_message.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation {
  factory Conversation({
    required String id,
    required List<ChatMessage> messages,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);

  const Conversation._();

  bool get isEmpty => messages.isEmpty;
}
