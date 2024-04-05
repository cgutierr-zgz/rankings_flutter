part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loaded(
    List<ChatMessage> messages,
  ) = _ChatLoaded;

  const factory ChatState.loading(
    List<ChatMessage> messages,
  ) = _ChatLoading;

  const factory ChatState.error(
    List<ChatMessage> messages, {
    required Errors error,
  }) = _ChatError;
}
