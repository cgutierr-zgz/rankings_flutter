// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatResponseImpl _$$ChatResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChatResponseImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
      systemFingerprint: json['system_fingerprint'] as String,
    );

Map<String, dynamic> _$$ChatResponseImplToJson(_$ChatResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
      'system_fingerprint': instance.systemFingerprint,
    };

_$ChoiceImpl _$$ChoiceImplFromJson(Map<String, dynamic> json) => _$ChoiceImpl(
      index: json['index'] as int,
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
      logprobs: json['logprobs'] as bool?,
      finishReason: json['finish_reason'] as String,
    );

Map<String, dynamic> _$$ChoiceImplToJson(_$ChoiceImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'logprobs': instance.logprobs,
      'finish_reason': instance.finishReason,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };

_$UsageImpl _$$UsageImplFromJson(Map<String, dynamic> json) => _$UsageImpl(
      promptTokens: json['prompt_tokens'] as int,
      completionTokens: json['completion_tokens'] as int,
      totalTokens: json['total_tokens'] as int,
    );

Map<String, dynamic> _$$UsageImplToJson(_$UsageImpl instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };
