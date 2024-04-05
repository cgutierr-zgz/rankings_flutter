import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rankings_flutter/common/constants.dart';
import 'package:rankings_flutter/common/env.dart';
import 'package:rankings_flutter/common/errors.dart';
import 'package:rankings_flutter/data/models/chat_response.dart';
import 'package:rankings_flutter/network/api_client.dart';

final class OpenAIService {
  OpenAIService()
      : _client = ApiClient(Constants.OPEN_AI_BASE_URL, Env().openAIApiKey);

  final ApiClient _client;

  /// Uses completions API from OpenAI's ChatGPT
  /// 
  /// [Docs](https://platform.openai.com/docs/api-reference/chat)
  Future<ChatResponse> getChatResponse(String query) async {
    Response<String> response;
    try {
      response = await _client.dio.post<String>(
        'chat/completions',
        data: {
          'model': 'gpt-3.5-turbo',
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
}
