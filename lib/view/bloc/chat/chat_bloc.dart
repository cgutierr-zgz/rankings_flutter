// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:rankings_flutter/common/errors.dart';
import 'package:rankings_flutter/data/models/chat_message.dart';
import 'package:rankings_flutter/data/models/conversation.dart';
import 'package:rankings_flutter/data/repositories/chat_interface.dart';
import 'package:rankings_flutter/view/cubit/settings_cubit.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends HydratedBloc<ChatEvent, ChatState> {
  ChatBloc({
    required ChatRepositoryI chatRepository,
    required SettingsCubit settingsCubit,
  })  : _chatRepository = chatRepository,
        _settingsCubit = settingsCubit,
        super(const _ChatLoaded([])) {
    on<_NewChat>(_onNewChat);
    on<_SendMessage>(_onSendMessage);
    on<_SelectChat>(_onSelectChat);
    on<_DeleteChat>(_onDeleteChat);
    on<_DeleteHistory>(_onDeleteHistory);
  }

  final ChatRepositoryI _chatRepository;
  final SettingsCubit _settingsCubit;

  Future<void> _onNewChat(
    _NewChat event,
    Emitter<ChatState> emit,
  ) async {
    final newChatId = DateTime.now().toIso8601String();

    final newConversation = Conversation(id: newChatId, messages: []);

    emit(
      ChatState.loaded(
        List<Conversation>.from(state.conversations)..add(newConversation),
        currentConversationId: newChatId,
      ),
    );
  }

  Future<void> _onSendMessage(
    _SendMessage event,
    Emitter<ChatState> emit,
  ) async {
    final userMessage = ChatMessage(content: event.query, isMyMessage: true);

    var convIndex = state.conversations.indexWhere(
      (element) => element.id == state.currentConversationId,
    );

    if (convIndex == -1) {
      final newConversation = Conversation(
        id: DateTime.now().toIso8601String(),
        messages: [],
      );

      convIndex = 0;

      emit(
        state.copyWith(
          currentConversationId: newConversation.id,
          conversations: [newConversation],
        ),
      );
    }

    final conv = state.conversations[convIndex];
    final updatedMessages = [...conv.messages, userMessage];

    final updatedConversations = List<Conversation>.from(state.conversations);
    updatedConversations[convIndex] = conv.copyWith(messages: updatedMessages);

    emit(
      ChatState.loaded(
        updatedConversations,
        currentConversationId: state.currentConversationId,
      ),
    );

    try {
      emit(
        ChatState.loading(
          state.conversations,
          currentConversationId: state.currentConversationId,
        ),
      );

      final settings = _settingsCubit.state;
      final message = await _chatRepository.getMessage(
        event.query,
        chatModel: settings.chatModel,
        imageModel: settings.imageModel,
        imagesAmmount: settings.imagesAmmount,
      );

      final conversationIndex = state.conversations.indexWhere(
        (element) => element.id == state.currentConversationId,
      );

      if (conversationIndex == -1) return;

      final conversation = state.conversations[convIndex];
      final updatedMessages = [...conversation.messages, message];

      final updatedConversations = List<Conversation>.from(state.conversations);
      updatedConversations[convIndex] =
          conversation.copyWith(messages: updatedMessages);

      emit(
        ChatState.loaded(
          updatedConversations,
          currentConversationId: state.currentConversationId,
        ),
      );
    } on Errors catch (e) {
      emit(
        ChatState.error(
          state.conversations,
          currentConversationId: state.currentConversationId,
          error: e,
        ),
      );
    }
  }

  Future<void> _onSelectChat(
    _SelectChat event,
    Emitter<ChatState> emit,
  ) async {
    final selectedChatId = event.conversationId;

    emit(ChatState.loading(state.conversations));

    final conversationIndex = state.conversations.indexWhere(
      (conv) => conv.id == selectedChatId,
    );

    if (conversationIndex == -1) return;

    emit(
      ChatState.loaded(
        state.conversations,
        currentConversationId: conversationIndex == -1
            ? state.currentConversationId
            : selectedChatId,
      ),
    );
  }

  Future<void> _onDeleteChat(
    _DeleteChat event,
    Emitter<ChatState> emit,
  ) async {
    final selectedChatId = event.conversationId;

    emit(ChatState.loading(state.conversations));

    final updatedConversations = List<Conversation>.from(state.conversations)
      ..removeWhere((conv) => conv.id == selectedChatId);

    final newCurrentConversationId =
        state.currentConversationId == selectedChatId
            ? null
            : state.currentConversationId;

    emit(
      ChatState.loaded(
        updatedConversations,
        currentConversationId: newCurrentConversationId,
      ),
    );
  }

  Future<void> _onDeleteHistory(
    _DeleteHistory event,
    Emitter<ChatState> emit,
  ) async {
    emit(
      // ignore: prefer_const_constructors
      ChatState.loaded(
        [],
        // ignore: avoid_redundant_argument_values
        currentConversationId: null,
      ),
    );
  }

  // * Uncomment the *'s to save the selected chat
  @override
  ChatState? fromJson(Map<String, dynamic> json) {
    try {
      final conversationsJson = json['conversations'] as List? ?? [];
      final conversations = conversationsJson.map((convJson) {
        return Conversation.fromJson(convJson as Map<String, dynamic>);
      }).toList();

      // *
      //final currentConversationId = json['currentConversationId'] as String?;

      return ChatState.loaded(
        conversations,
        // *
        //currentConversationId: currentConversationId,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ChatState state) {
    try {
      return {
        'conversations':
            state.conversations.map((conv) => conv.toJson()).toList(),
        // *
        //'currentConversationId': state.currentConversationId,
      };
    } catch (e) {
      return null;
    }
  }
}
