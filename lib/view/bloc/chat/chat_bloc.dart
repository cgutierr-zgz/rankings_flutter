// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings_flutter/common/errors.dart';
import 'package:rankings_flutter/data/models/chat_message.dart';
import 'package:rankings_flutter/data/repositories/chat_interface.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({required ChatRepositoryI chatRepository})
      : _chatRepository = chatRepository,
        super(const _ChatLoaded([])) {
    on<_SendMessage>(_onSendMessage);
  }

  final ChatRepositoryI _chatRepository;

  Future<void> _onSendMessage(
    _SendMessage event,
    Emitter<ChatState> emit,
  ) async {
    final userMessage = ChatMessage(content: event.query, isMyMessage: true);

    emit(ChatState.loaded([...state.messages, userMessage]));
    emit(ChatState.loading(state.messages));

    try {
      final message = await _chatRepository.getMessage(event.query);

      emit(ChatState.loaded([...state.messages, message]));
    } on Errors catch (e) {
      emit(ChatState.error(state.messages, error: e));
    }
  }
}
