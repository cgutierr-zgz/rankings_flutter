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
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEventCopyWith<ChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @override
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
    required TResult Function(String query) sendMessage,
  }) {
    return sendMessage(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? sendMessage,
  }) {
    return sendMessage?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? sendMessage,
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
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
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

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessage> messages) loaded,
    required TResult Function(List<ChatMessage> messages) loading,
    required TResult Function(List<ChatMessage> messages, Errors error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messages)? loaded,
    TResult? Function(List<ChatMessage> messages)? loading,
    TResult? Function(List<ChatMessage> messages, Errors error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messages)? loaded,
    TResult Function(List<ChatMessage> messages)? loading,
    TResult Function(List<ChatMessage> messages, Errors error)? error,
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
  $Res call({List<ChatMessage> messages});
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
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
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
  $Res call({List<ChatMessage> messages});
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
    Object? messages = null,
  }) {
    return _then(_$ChatLoadedImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$ChatLoadedImpl implements _ChatLoaded {
  const _$ChatLoadedImpl(final List<ChatMessage> messages)
      : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.loaded(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatLoadedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLoadedImplCopyWith<_$ChatLoadedImpl> get copyWith =>
      __$$ChatLoadedImplCopyWithImpl<_$ChatLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessage> messages) loaded,
    required TResult Function(List<ChatMessage> messages) loading,
    required TResult Function(List<ChatMessage> messages, Errors error) error,
  }) {
    return loaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messages)? loaded,
    TResult? Function(List<ChatMessage> messages)? loading,
    TResult? Function(List<ChatMessage> messages, Errors error)? error,
  }) {
    return loaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messages)? loaded,
    TResult Function(List<ChatMessage> messages)? loading,
    TResult Function(List<ChatMessage> messages, Errors error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messages);
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

abstract class _ChatLoaded implements ChatState {
  const factory _ChatLoaded(final List<ChatMessage> messages) =
      _$ChatLoadedImpl;

  @override
  List<ChatMessage> get messages;
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
  $Res call({List<ChatMessage> messages});
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
    Object? messages = null,
  }) {
    return _then(_$ChatLoadingImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$ChatLoadingImpl implements _ChatLoading {
  const _$ChatLoadingImpl(final List<ChatMessage> messages)
      : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.loading(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatLoadingImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLoadingImplCopyWith<_$ChatLoadingImpl> get copyWith =>
      __$$ChatLoadingImplCopyWithImpl<_$ChatLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessage> messages) loaded,
    required TResult Function(List<ChatMessage> messages) loading,
    required TResult Function(List<ChatMessage> messages, Errors error) error,
  }) {
    return loading(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messages)? loaded,
    TResult? Function(List<ChatMessage> messages)? loading,
    TResult? Function(List<ChatMessage> messages, Errors error)? error,
  }) {
    return loading?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messages)? loaded,
    TResult Function(List<ChatMessage> messages)? loading,
    TResult Function(List<ChatMessage> messages, Errors error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(messages);
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

abstract class _ChatLoading implements ChatState {
  const factory _ChatLoading(final List<ChatMessage> messages) =
      _$ChatLoadingImpl;

  @override
  List<ChatMessage> get messages;
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
  $Res call({List<ChatMessage> messages, Errors error});
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
    Object? messages = null,
    Object? error = null,
  }) {
    return _then(_$ChatErrorImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Errors,
    ));
  }
}

/// @nodoc

class _$ChatErrorImpl implements _ChatError {
  const _$ChatErrorImpl(final List<ChatMessage> messages, {required this.error})
      : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final Errors error;

  @override
  String toString() {
    return 'ChatState.error(messages: $messages, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatErrorImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messages), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatErrorImplCopyWith<_$ChatErrorImpl> get copyWith =>
      __$$ChatErrorImplCopyWithImpl<_$ChatErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessage> messages) loaded,
    required TResult Function(List<ChatMessage> messages) loading,
    required TResult Function(List<ChatMessage> messages, Errors error) error,
  }) {
    return error(messages, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messages)? loaded,
    TResult? Function(List<ChatMessage> messages)? loading,
    TResult? Function(List<ChatMessage> messages, Errors error)? error,
  }) {
    return error?.call(messages, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messages)? loaded,
    TResult Function(List<ChatMessage> messages)? loading,
    TResult Function(List<ChatMessage> messages, Errors error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(messages, this.error);
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

abstract class _ChatError implements ChatState {
  const factory _ChatError(final List<ChatMessage> messages,
      {required final Errors error}) = _$ChatErrorImpl;

  @override
  List<ChatMessage> get messages;
  Errors get error;
  @override
  @JsonKey(ignore: true)
  _$$ChatErrorImplCopyWith<_$ChatErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
