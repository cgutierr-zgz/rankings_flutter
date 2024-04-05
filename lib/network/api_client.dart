import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

final class ApiClient {
  ApiClient(String baseUrl, String apiKey) : dio = Dio() {
    dio.options.baseUrl = baseUrl;

    dio.options.headers = {
      'Content-Type': 'application/json',
    };

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          debugPrint('''
🌐 Request: ${options.method} ${options.path}
📦 Body: ${options.data}''');

          options.headers['Authorization'] = 'Bearer $apiKey';

          return handler.next(options);
        },
        onResponse: (response, handler) {
          debugPrint('''
✅ Response from: ${response.requestOptions.path}
📄 Data: ${response.data}''');

          return handler.next(response);
        },
        onError: (error, handler) {
          debugPrint('''
❌ Error: ${error.message}
📍 Endpoint: ${error.requestOptions.path}''');
          if (error.response != null) {
            debugPrint('''
🚩 Status Code: ${error.response!.statusCode}
📄 Error Data: ${error.response!.data}''');
          }

          return handler.next(error);
        },
      ),
    );
  }
  final Dio dio;
}
