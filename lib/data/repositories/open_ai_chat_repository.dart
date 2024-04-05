import 'package:rankings_flutter/data/models/chat_message.dart';
import 'package:rankings_flutter/data/repositories/chat_interface.dart';
import 'package:rankings_flutter/data/services/open_ai_service.dart';

final class OpenAIChatRepository implements ChatRepositoryI {
  const OpenAIChatRepository({required OpenAIService openAIService})
      : _openAIService = openAIService;

  final OpenAIService _openAIService;

  @override
  Future<ChatMessage> getMessage(String query) async {
    final response = await _openAIService.getChatResponse(query);

    return ChatMessage.fromChatResponse(response);
  }
}
