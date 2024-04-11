import 'package:rankings_flutter/data/models/chat_message.dart';
import 'package:rankings_flutter/data/services/open_ai_service.dart';

// ignore: one_member_abstracts
abstract interface class ChatRepositoryI {
  Future<ChatMessage> getMessage(
    String query, {
    required GPTCompletionModels chatModel,
    required GPTImageGenerationModels imageModel,
    required int imagesAmmount,
  });
}
