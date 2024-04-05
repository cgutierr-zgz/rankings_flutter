// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_response.freezed.dart';
part 'chat_response.g.dart';

@freezed
class ChatResponse with _$ChatResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ChatResponse({
    required String id,
    required String object,
    required int created,
    required String model,
    required List<Choice> choices,
    required Usage usage,
    required String systemFingerprint,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}

@freezed
class Choice with _$Choice {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Choice({
    required int index,
    required Message message,
    required bool? logprobs,
    required String finishReason,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}

@freezed
class Message with _$Message {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Message({
    required String role,
    required String content,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class Usage with _$Usage {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Usage({
    required int promptTokens,
    required int completionTokens,
    required int totalTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}
