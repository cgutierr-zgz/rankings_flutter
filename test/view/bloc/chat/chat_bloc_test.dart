import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rankings_flutter/common/errors.dart';
import 'package:rankings_flutter/data/models/chat_message.dart';
import 'package:rankings_flutter/data/repositories/chat_interface.dart';
import 'package:rankings_flutter/view/bloc/chat/chat_bloc.dart';

class MockChatRepository extends Mock implements ChatRepositoryI {}

void main() {
  group('ChatBloc', () {
    late ChatBloc chatBloc;
    late MockChatRepository mockChatRepository;

    setUp(() {
      mockChatRepository = MockChatRepository();
      chatBloc = ChatBloc(chatRepository: mockChatRepository);
    });

    tearDown(() => chatBloc.close());

    blocTest<ChatBloc, ChatState>(
      '''emits [ChatState.loading, ChatState.loaded] when SendMessage event is added successfully''',
      build: () {
        mockChatRepository = MockChatRepository();
        chatBloc = ChatBloc(chatRepository: mockChatRepository);

        when(() => mockChatRepository.getMessage(any())).thenAnswer(
          (invocation) => Future.value(
            ChatMessage(content: 'Mocked Response', isMyMessage: false),
          ),
        );

        return chatBloc;
      },
      act: (bloc) => bloc.add(const ChatEvent.sendMessage('Test Message')),
      expect: () => [
        ChatState.loaded([
          ChatMessage(content: 'Test Message', isMyMessage: true),
        ]),
        ChatState.loading([
          ChatMessage(content: 'Test Message', isMyMessage: true),
        ]),
        ChatState.loaded([
          ChatMessage(content: 'Test Message', isMyMessage: true),
          ChatMessage(content: 'Mocked Response', isMyMessage: false),
        ]),
      ],
    );

    blocTest<ChatBloc, ChatState>(
      '''emits [ChatState.loading, ChatState.error] when SendMessage event is added with error''',
      build: () {
        when(() => mockChatRepository.getMessage(any())).thenThrow(
          Errors.invalidResponse,
        );
        return chatBloc;
      },
      act: (bloc) => bloc.add(const ChatEvent.sendMessage('Test Message')),
      expect: () => [
        ChatState.loaded([
          ChatMessage(content: 'Test Message', isMyMessage: true),
        ]),
        ChatState.loading([
          ChatMessage(content: 'Test Message', isMyMessage: true),
        ]),
        ChatState.error(
          [
            ChatMessage(content: 'Test Message', isMyMessage: true),
          ],
          error: Errors.invalidResponse,
        ),
      ],
    );
  });
}
