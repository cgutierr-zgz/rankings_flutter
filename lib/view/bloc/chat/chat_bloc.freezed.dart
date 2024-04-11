// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newChat,
    required TResult Function(String query) sendMessage,
    required TResult Function(String conversationId) selectChat,
    required TResult Function(String conversationId) deleteChat,
    required TResult Function() deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newChat,
    TResult? Function(String query)? sendMessage,
    TResult? Function(String conversationId)? selectChat,
    TResult? Function(String conversationId)? deleteChat,
    TResult? Function()? deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newChat,
    TResult Function(String query)? sendMessage,
    TResult Function(String conversationId)? selectChat,
    TResult Function(String conversationId)? deleteChat,
    TResult Function()? deleteHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChat value) newChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChat value)? newChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChat value)? newChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewChatImplCopyWith<$Res> {
  factory _$$NewChatImplCopyWith(
          _$NewChatImpl value, $Res Function(_$NewChatImpl) then) =
      __$$NewChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$NewChatImpl>
    implements _$$NewChatImplCopyWith<$Res> {
  __$$NewChatImplCopyWithImpl(
      _$NewChatImpl _value, $Res Function(_$NewChatImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewChatImpl implements _NewChat {
  const _$NewChatImpl();

  @override
  String toString() {
    return 'ChatEvent.newChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newChat,
    required TResult Function(String query) sendMessage,
    required TResult Function(String conversationId) selectChat,
    required TResult Function(String conversationId) deleteChat,
    required TResult Function() deleteHistory,
  }) {
    return newChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newChat,
    TResult? Function(String query)? sendMessage,
    TResult? Function(String conversationId)? selectChat,
    TResult? Function(String conversationId)? deleteChat,
    TResult? Function()? deleteHistory,
  }) {
    return newChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newChat,
    TResult Function(String query)? sendMessage,
    TResult Function(String conversationId)? selectChat,
    TResult Function(String conversationId)? deleteChat,
    TResult Function()? deleteHistory,
    required TResult orElse(),
  }) {
    if (newChat != null) {
      return newChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChat value) newChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) {
    return newChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChat value)? newChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) {
    return newChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChat value)? newChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (newChat != null) {
      return newChat(this);
    }
    return orElse();
  }
}

abstract class _NewChat implements ChatEvent {
  const factory _NewChat() = _$NewChatImpl;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SendMessageImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newChat,
    required TResult Function(String query) sendMessage,
    required TResult Function(String conversationId) selectChat,
    required TResult Function(String conversationId) deleteChat,
    required TResult Function() deleteHistory,
  }) {
    return sendMessage(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newChat,
    TResult? Function(String query)? sendMessage,
    TResult? Function(String conversationId)? selectChat,
    TResult? Function(String conversationId)? deleteChat,
    TResult? Function()? deleteHistory,
  }) {
    return sendMessage?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newChat,
    TResult Function(String query)? sendMessage,
    TResult Function(String conversationId)? selectChat,
    TResult Function(String conversationId)? deleteChat,
    TResult Function()? deleteHistory,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChat value) newChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChat value)? newChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChat value)? newChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(final String query) = _$SendMessageImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectChatImplCopyWith<$Res> {
  factory _$$SelectChatImplCopyWith(
          _$SelectChatImpl value, $Res Function(_$SelectChatImpl) then) =
      __$$SelectChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$SelectChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SelectChatImpl>
    implements _$$SelectChatImplCopyWith<$Res> {
  __$$SelectChatImplCopyWithImpl(
      _$SelectChatImpl _value, $Res Function(_$SelectChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$SelectChatImpl(
      null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectChatImpl implements _SelectChat {
  const _$SelectChatImpl(this.conversationId);

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ChatEvent.selectChat(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectChatImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectChatImplCopyWith<_$SelectChatImpl> get copyWith =>
      __$$SelectChatImplCopyWithImpl<_$SelectChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newChat,
    required TResult Function(String query) sendMessage,
    required TResult Function(String conversationId) selectChat,
    required TResult Function(String conversationId) deleteChat,
    required TResult Function() deleteHistory,
  }) {
    return selectChat(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newChat,
    TResult? Function(String query)? sendMessage,
    TResult? Function(String conversationId)? selectChat,
    TResult? Function(String conversationId)? deleteChat,
    TResult? Function()? deleteHistory,
  }) {
    return selectChat?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newChat,
    TResult Function(String query)? sendMessage,
    TResult Function(String conversationId)? selectChat,
    TResult Function(String conversationId)? deleteChat,
    TResult Function()? deleteHistory,
    required TResult orElse(),
  }) {
    if (selectChat != null) {
      return selectChat(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChat value) newChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) {
    return selectChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChat value)? newChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) {
    return selectChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChat value)? newChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (selectChat != null) {
      return selectChat(this);
    }
    return orElse();
  }
}

abstract class _SelectChat implements ChatEvent {
  const factory _SelectChat(final String conversationId) = _$SelectChatImpl;

  String get conversationId;
  @JsonKey(ignore: true)
  _$$SelectChatImplCopyWith<_$SelectChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteChatImplCopyWith<$Res> {
  factory _$$DeleteChatImplCopyWith(
          _$DeleteChatImpl value, $Res Function(_$DeleteChatImpl) then) =
      __$$DeleteChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$DeleteChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteChatImpl>
    implements _$$DeleteChatImplCopyWith<$Res> {
  __$$DeleteChatImplCopyWithImpl(
      _$DeleteChatImpl _value, $Res Function(_$DeleteChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$DeleteChatImpl(
      null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteChatImpl implements _DeleteChat {
  const _$DeleteChatImpl(this.conversationId);

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ChatEvent.deleteChat(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteChatImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteChatImplCopyWith<_$DeleteChatImpl> get copyWith =>
      __$$DeleteChatImplCopyWithImpl<_$DeleteChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newChat,
    required TResult Function(String query) sendMessage,
    required TResult Function(String conversationId) selectChat,
    required TResult Function(String conversationId) deleteChat,
    required TResult Function() deleteHistory,
  }) {
    return deleteChat(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newChat,
    TResult? Function(String query)? sendMessage,
    TResult? Function(String conversationId)? selectChat,
    TResult? Function(String conversationId)? deleteChat,
    TResult? Function()? deleteHistory,
  }) {
    return deleteChat?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newChat,
    TResult Function(String query)? sendMessage,
    TResult Function(String conversationId)? selectChat,
    TResult Function(String conversationId)? deleteChat,
    TResult Function()? deleteHistory,
    required TResult orElse(),
  }) {
    if (deleteChat != null) {
      return deleteChat(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChat value) newChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) {
    return deleteChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChat value)? newChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) {
    return deleteChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChat value)? newChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (deleteChat != null) {
      return deleteChat(this);
    }
    return orElse();
  }
}

abstract class _DeleteChat implements ChatEvent {
  const factory _DeleteChat(final String conversationId) = _$DeleteChatImpl;

  String get conversationId;
  @JsonKey(ignore: true)
  _$$DeleteChatImplCopyWith<_$DeleteChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteHistoryImplCopyWith<$Res> {
  factory _$$DeleteHistoryImplCopyWith(
          _$DeleteHistoryImpl value, $Res Function(_$DeleteHistoryImpl) then) =
      __$$DeleteHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteHistoryImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteHistoryImpl>
    implements _$$DeleteHistoryImplCopyWith<$Res> {
  __$$DeleteHistoryImplCopyWithImpl(
      _$DeleteHistoryImpl _value, $Res Function(_$DeleteHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteHistoryImpl implements _DeleteHistory {
  const _$DeleteHistoryImpl();

  @override
  String toString() {
    return 'ChatEvent.deleteHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newChat,
    required TResult Function(String query) sendMessage,
    required TResult Function(String conversationId) selectChat,
    required TResult Function(String conversationId) deleteChat,
    required TResult Function() deleteHistory,
  }) {
    return deleteHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newChat,
    TResult? Function(String query)? sendMessage,
    TResult? Function(String conversationId)? selectChat,
    TResult? Function(String conversationId)? deleteChat,
    TResult? Function()? deleteHistory,
  }) {
    return deleteHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newChat,
    TResult Function(String query)? sendMessage,
    TResult Function(String conversationId)? selectChat,
    TResult Function(String conversationId)? deleteChat,
    TResult Function()? deleteHistory,
    required TResult orElse(),
  }) {
    if (deleteHistory != null) {
      return deleteHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewChat value) newChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_DeleteHistory value) deleteHistory,
  }) {
    return deleteHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewChat value)? newChat,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_DeleteHistory value)? deleteHistory,
  }) {
    return deleteHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewChat value)? newChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_DeleteHistory value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (deleteHistory != null) {
      return deleteHistory(this);
    }
    return orElse();
  }
}

abstract class _DeleteHistory implements ChatEvent {
  const factory _DeleteHistory() = _$DeleteHistoryImpl;
}

/// @nodoc
mixin _$ChatState {
  List<Conversation> get conversations => throw _privateConstructorUsedError;
  String? get currentConversationId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Conversation> conversations, String? currentConversationId)
        loaded,
    required TResult Function(
            List<Conversation> conversations, String? currentConversationId)
        loading,
    required TResult Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Conversation> conversations, String? currentConversationId)?
        loaded,
    TResult? Function(
            List<Conversation> conversations, String? currentConversationId)?
        loading,
    TResult? Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Conversation> conversations, String? currentConversationId)?
        loaded,
    TResult Function(
            List<Conversation> conversations, String? currentConversationId)?
        loading,
    TResult Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatLoaded value) loaded,
    required TResult Function(_ChatLoading value) loading,
    required TResult Function(_ChatError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatLoaded value)? loaded,
    TResult? Function(_ChatLoading value)? loading,
    TResult? Function(_ChatError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatLoaded value)? loaded,
    TResult Function(_ChatLoading value)? loading,
    TResult Function(_ChatError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({List<Conversation> conversations, String? currentConversationId});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? currentConversationId = freezed,
  }) {
    return _then(_value.copyWith(
      conversations: null == conversations
          ? _value.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      currentConversationId: freezed == currentConversationId
          ? _value.currentConversationId
          : currentConversationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatLoadedImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatLoadedImplCopyWith(
          _$ChatLoadedImpl value, $Res Function(_$ChatLoadedImpl) then) =
      __$$ChatLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations, String? currentConversationId});
}

/// @nodoc
class __$$ChatLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatLoadedImpl>
    implements _$$ChatLoadedImplCopyWith<$Res> {
  __$$ChatLoadedImplCopyWithImpl(
      _$ChatLoadedImpl _value, $Res Function(_$ChatLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? currentConversationId = freezed,
  }) {
    return _then(_$ChatLoadedImpl(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      currentConversationId: freezed == currentConversationId
          ? _value.currentConversationId
          : currentConversationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatLoadedImpl extends _ChatLoaded {
  const _$ChatLoadedImpl(final List<Conversation> conversations,
      {this.currentConversationId})
      : _conversations = conversations,
        super._();

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  final String? currentConversationId;

  @override
  String toString() {
    return 'ChatState.loaded(conversations: $conversations, currentConversationId: $currentConversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(other.currentConversationId, currentConversationId) ||
                other.currentConversationId == currentConversationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_conversations),
      currentConversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLoadedImplCopyWith<_$ChatLoadedImpl> get copyWith =>
      __$$ChatLoadedImplCopyWithImpl<_$ChatLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Conversation> conversations, String? currentConversationId)
        loaded,
    required TResult Function(
            List<Conversation> conversations, String? currentConversationId)
        loading,
    required TResult Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)
        error,
  }) {
    return loaded(conversations, currentConversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Conversation> conversations, String? currentConversationId)?
        loaded,
    TResult? Function(
            List<Conversation> conversations, String? currentConversationId)?
        loading,
    TResult? Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)?
        error,
  }) {
    return loaded?.call(conversations, currentConversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Conversation> conversations, String? currentConversationId)?
        loaded,
    TResult Function(
            List<Conversation> conversations, String? currentConversationId)?
        loading,
    TResult Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(conversations, currentConversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatLoaded value) loaded,
    required TResult Function(_ChatLoading value) loading,
    required TResult Function(_ChatError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatLoaded value)? loaded,
    TResult? Function(_ChatLoading value)? loading,
    TResult? Function(_ChatError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatLoaded value)? loaded,
    TResult Function(_ChatLoading value)? loading,
    TResult Function(_ChatError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ChatLoaded extends ChatState {
  const factory _ChatLoaded(final List<Conversation> conversations,
      {final String? currentConversationId}) = _$ChatLoadedImpl;
  const _ChatLoaded._() : super._();

  @override
  List<Conversation> get conversations;
  @override
  String? get currentConversationId;
  @override
  @JsonKey(ignore: true)
  _$$ChatLoadedImplCopyWith<_$ChatLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatLoadingImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatLoadingImplCopyWith(
          _$ChatLoadingImpl value, $Res Function(_$ChatLoadingImpl) then) =
      __$$ChatLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations, String? currentConversationId});
}

/// @nodoc
class __$$ChatLoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatLoadingImpl>
    implements _$$ChatLoadingImplCopyWith<$Res> {
  __$$ChatLoadingImplCopyWithImpl(
      _$ChatLoadingImpl _value, $Res Function(_$ChatLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? currentConversationId = freezed,
  }) {
    return _then(_$ChatLoadingImpl(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      currentConversationId: freezed == currentConversationId
          ? _value.currentConversationId
          : currentConversationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatLoadingImpl extends _ChatLoading {
  const _$ChatLoadingImpl(final List<Conversation> conversations,
      {this.currentConversationId})
      : _conversations = conversations,
        super._();

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  final String? currentConversationId;

  @override
  String toString() {
    return 'ChatState.loading(conversations: $conversations, currentConversationId: $currentConversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(other.currentConversationId, currentConversationId) ||
                other.currentConversationId == currentConversationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_conversations),
      currentConversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLoadingImplCopyWith<_$ChatLoadingImpl> get copyWith =>
      __$$ChatLoadingImplCopyWithImpl<_$ChatLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Conversation> conversations, String? currentConversationId)
        loaded,
    required TResult Function(
            List<Conversation> conversations, String? currentConversationId)
        loading,
    required TResult Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)
        error,
  }) {
    return loading(conversations, currentConversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Conversation> conversations, String? currentConversationId)?
        loaded,
    TResult? Function(
            List<Conversation> conversations, String? currentConversationId)?
        loading,
    TResult? Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)?
        error,
  }) {
    return loading?.call(conversations, currentConversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Conversation> conversations, String? currentConversationId)?
        loaded,
    TResult Function(
            List<Conversation> conversations, String? currentConversationId)?
        loading,
    TResult Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(conversations, currentConversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatLoaded value) loaded,
    required TResult Function(_ChatLoading value) loading,
    required TResult Function(_ChatError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatLoaded value)? loaded,
    TResult? Function(_ChatLoading value)? loading,
    TResult? Function(_ChatError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatLoaded value)? loaded,
    TResult Function(_ChatLoading value)? loading,
    TResult Function(_ChatError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ChatLoading extends ChatState {
  const factory _ChatLoading(final List<Conversation> conversations,
      {final String? currentConversationId}) = _$ChatLoadingImpl;
  const _ChatLoading._() : super._();

  @override
  List<Conversation> get conversations;
  @override
  String? get currentConversationId;
  @override
  @JsonKey(ignore: true)
  _$$ChatLoadingImplCopyWith<_$ChatLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatErrorImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatErrorImplCopyWith(
          _$ChatErrorImpl value, $Res Function(_$ChatErrorImpl) then) =
      __$$ChatErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Conversation> conversations,
      Errors error,
      String? currentConversationId});
}

/// @nodoc
class __$$ChatErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatErrorImpl>
    implements _$$ChatErrorImplCopyWith<$Res> {
  __$$ChatErrorImplCopyWithImpl(
      _$ChatErrorImpl _value, $Res Function(_$ChatErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? error = null,
    Object? currentConversationId = freezed,
  }) {
    return _then(_$ChatErrorImpl(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Errors,
      currentConversationId: freezed == currentConversationId
          ? _value.currentConversationId
          : currentConversationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatErrorImpl extends _ChatError {
  const _$ChatErrorImpl(final List<Conversation> conversations,
      {required this.error, this.currentConversationId})
      : _conversations = conversations,
        super._();

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  final Errors error;
  @override
  final String? currentConversationId;

  @override
  String toString() {
    return 'ChatState.error(conversations: $conversations, error: $error, currentConversationId: $currentConversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.currentConversationId, currentConversationId) ||
                other.currentConversationId == currentConversationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_conversations),
      error,
      currentConversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatErrorImplCopyWith<_$ChatErrorImpl> get copyWith =>
      __$$ChatErrorImplCopyWithImpl<_$ChatErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Conversation> conversations, String? currentConversationId)
        loaded,
    required TResult Function(
            List<Conversation> conversations, String? currentConversationId)
        loading,
    required TResult Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)
        error,
  }) {
    return error(conversations, this.error, currentConversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Conversation> conversations, String? currentConversationId)?
        loaded,
    TResult? Function(
            List<Conversation> conversations, String? currentConversationId)?
        loading,
    TResult? Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)?
        error,
  }) {
    return error?.call(conversations, this.error, currentConversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Conversation> conversations, String? currentConversationId)?
        loaded,
    TResult Function(
            List<Conversation> conversations, String? currentConversationId)?
        loading,
    TResult Function(List<Conversation> conversations, Errors error,
            String? currentConversationId)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(conversations, this.error, currentConversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatLoaded value) loaded,
    required TResult Function(_ChatLoading value) loading,
    required TResult Function(_ChatError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatLoaded value)? loaded,
    TResult? Function(_ChatLoading value)? loading,
    TResult? Function(_ChatError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatLoaded value)? loaded,
    TResult Function(_ChatLoading value)? loading,
    TResult Function(_ChatError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ChatError extends ChatState {
  const factory _ChatError(final List<Conversation> conversations,
      {required final Errors error,
      final String? currentConversationId}) = _$ChatErrorImpl;
  const _ChatError._() : super._();

  @override
  List<Conversation> get conversations;
  Errors get error;
  @override
  String? get currentConversationId;
  @override
  @JsonKey(ignore: true)
  _$$ChatErrorImplCopyWith<_$ChatErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
