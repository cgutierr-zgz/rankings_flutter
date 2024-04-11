import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rankings_flutter/common/constants.dart';
import 'package:rankings_flutter/common/env.dart';
import 'package:rankings_flutter/common/errors.dart';
import 'package:rankings_flutter/data/models/chat_response.dart';
import 'package:rankings_flutter/data/models/image_response.dart';
import 'package:rankings_flutter/network/api_client.dart';

enum GPTCompletionModels {
  gpt3_5Turbo('gpt-3.5-turbo'),
  gpt4('gpt-4'),
  gpt4Turbo('gpt-4-turbo'),
  gpt3_5Turbo0125('gpt-3.5-turbo-0125'),
  gpt3_5Turbo16k_0613('gpt-3.5-turbo-16k-0613'),
  gpt3_5Turbo16k('gpt-3.5-turbo-16k'),
  gpt3_5Turbo0301('gpt-3.5-turbo-0301'),
  gpt3_5Turbo0613('gpt-3.5-turbo-0613'),
  gpt3_5Turbo1106('gpt-3.5-turbo-1106'),
  gpt4_0125Preview('gpt-4-0125-preview'),
  gpt4TurboPreview('gpt-4-turbo-preview'),
  gpt4Turbo2024_04_09('gpt-4-turbo-2024-04-09'),
  gpt4_1106VisionPreview('gpt-4-1106-vision-preview'),
  gpt4_1106Preview('gpt-4-1106-preview'),
  gpt4_0613('gpt-4-0613'),
  ;

  const GPTCompletionModels(this.key);

  final String key;
}

enum GPTImageGenerationModels {
  dallE2('dall-e-2'),
  dallE3('dall-e-3'),
  ;

  const GPTImageGenerationModels(this.key);

  final String key;

  int get minImages => switch (this) {
        GPTImageGenerationModels.dallE2 => 0,
        GPTImageGenerationModels.dallE3 => 0,
      };

  int get maxImages => switch (this) {
        GPTImageGenerationModels.dallE2 => 5,
        GPTImageGenerationModels.dallE3 => 1,
      };

  String get imageOutputSize => switch (this) {
        GPTImageGenerationModels.dallE2 => '256x256',
        GPTImageGenerationModels.dallE3 => '1024x1024',
      };
}

final class OpenAIService {
  OpenAIService()
      : _client = ApiClient(Constants.OPEN_AI_BASE_URL, Env().openAIApiKey);

  final ApiClient _client;

  /// Uses completions API from OpenAI's ChatGPT
  ///
  /// [Docs](https://platform.openai.com/docs/api-reference/chat)
  Future<ChatResponse> getChatResponse(
    String query, {
    required GPTCompletionModels model,
  }) async {
    Response<String> response;
    try {
      response = await _client.dio.post<String>(
        'chat/completions',
        data: {
          'model': model.key,
          'messages': [
            {
              'role': 'system',
              'content': '''
You are a helpful assistant with ability to consult rankings.
Generate an answer to the user's question as a ranking.
Reply in the language the question was asked.
Include as much information as possible in the answer.
Dont include relevant URL's in the response.
''',
            },
            {
              'role': 'user',
              'content': 'Generate a ranking for the following topic: $query',
            },
          ],
        },
      );

      if (response.data == null) throw Errors.invalidResponse;

      try {
        return ChatResponse.fromJson(
          json.decode(response.data!) as Map<String, dynamic>,
        );
      } catch (e) {
        throw Errors.invlidData;
      }
    } on Errors {
      rethrow;
    } catch (_) {
      throw Errors.unableToComplete;
    }
  }

  /// Uses Image API from OpenAI's ChatGPT
  ///
  /// [Docs](https://platform.openai.com/docs/api-reference/images)
  Future<ImageResponse> generateImages(
    String query, {
    required GPTImageGenerationModels model,
    required int imagesAmmount,
  }) async {
    if (imagesAmmount <= 0) throw Errors.unableToComplete;

    Response<String> response;
    try {
      response = await _client.dio.post<String>(
        'images/generations',
        data: {
          'model': model.key,
          'prompt': query,
          'n': imagesAmmount,
          'size': model.imageOutputSize,
        },
      );

      if (response.data == null) throw Errors.invalidResponse;

      try {
        return ImageResponse.fromJson(
          json.decode(response.data!) as Map<String, dynamic>,
        );
      } catch (e) {
        throw Errors.invlidData;
      }
    } on Errors {
      rethrow;
    } catch (_) {
      throw Errors.unableToComplete;
    }
  }
}
