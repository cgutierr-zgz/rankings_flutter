import 'package:rankings_flutter/data/models/chat_message.dart';
import 'package:rankings_flutter/data/models/chat_response.dart';
import 'package:rankings_flutter/data/models/image_response.dart';
import 'package:rankings_flutter/data/repositories/chat_interface.dart';
import 'package:rankings_flutter/data/services/open_ai_service.dart';

final class OpenAIChatRepository implements ChatRepositoryI {
  const OpenAIChatRepository({required OpenAIService openAIService})
      : _openAIService = openAIService;

  final OpenAIService _openAIService;

  @override
  Future<ChatMessage> getMessage(
    String query, {
    required GPTCompletionModels chatModel,
    required GPTImageGenerationModels imageModel,
    required int imagesAmmount,
  }) async {
    final responseFuture = _openAIService.getChatResponse(
      query,
      model: chatModel,
    );

    final imagesFuture = _openAIService.generateImages(
      query,
      model: imageModel,
      imagesAmmount: imagesAmmount,
    );

    final responses = await Future.wait<dynamic>([
      responseFuture,
      imagesFuture.catchError(
        (error) => ImageResponse(
          created: DateTime.now().millisecondsSinceEpoch,
          data: [],
        ),
      ),
    ]);

    final chatResponse = responses[0] as ChatResponse;
    final imageResponse = responses[1] as ImageResponse;

    return ChatMessage.fromPropmt(chatResponse, imageResponse);
  }
}
