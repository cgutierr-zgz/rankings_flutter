part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loaded(
    List<Conversation> conversations, {
    String? currentConversationId,
  }) = _ChatLoaded;

  const factory ChatState.loading(
    List<Conversation> conversations, {
    String? currentConversationId,
  }) = _ChatLoading;

  const factory ChatState.error(
    List<Conversation> conversations, {
    required Errors error,
    String? currentConversationId,
  }) = _ChatError;

  const ChatState._();

  Conversation? get selectedConversation {
    final conversationIndex = conversations.indexWhere(
      (element) => element.id == currentConversationId,
    );

    if (conversationIndex == -1) return null;

    return conversations[conversationIndex];
  }
}
