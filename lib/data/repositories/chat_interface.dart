import 'package:rankings_flutter/data/models/chat_message.dart';

// ignore: one_member_abstracts
abstract interface class ChatRepositoryI {
  Future<ChatMessage> getMessage(String query);
}
