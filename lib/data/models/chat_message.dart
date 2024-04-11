import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings_flutter/data/models/chat_response.dart';
import 'package:rankings_flutter/data/models/image_response.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  factory ChatMessage({
    required String content,
    required bool isMyMessage,
    @Default([]) List<String> images,
  }) = _ChatMessage;

  factory ChatMessage.fromPropmt(ChatResponse response, ImageResponse image) {
    return ChatMessage(
      content: response.choices.first.message.content,
      isMyMessage: false,
      images: image.data.map((e) => e.url).toList(),
    );
  }

  const ChatMessage._();

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
