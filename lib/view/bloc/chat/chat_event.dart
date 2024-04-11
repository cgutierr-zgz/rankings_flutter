part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.newChat() = _NewChat;

  const factory ChatEvent.sendMessage(
    String query,
  ) = _SendMessage;

  const factory ChatEvent.selectChat(
    String conversationId,
  ) = _SelectChat;

  const factory ChatEvent.deleteChat(
    String conversationId,
  ) = _DeleteChat;

  const factory ChatEvent.deleteHistory() = _DeleteHistory;
}
