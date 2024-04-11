// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      locale: json['locale'] == null
          ? null
          : const _LocaleConverter().fromJson(json['locale'] as String?),
      chatModel: $enumDecodeNullable(
              _$GPTCompletionModelsEnumMap, json['chatModel']) ??
          GPTCompletionModels.gpt3_5Turbo,
      imageModel: $enumDecodeNullable(
              _$GPTImageGenerationModelsEnumMap, json['imageModel']) ??
          GPTImageGenerationModels.dallE2,
      imagesAmmount: json['imagesAmmount'] as int? ?? 1,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'locale': const _LocaleConverter().toJson(instance.locale),
      'chatModel': _$GPTCompletionModelsEnumMap[instance.chatModel]!,
      'imageModel': _$GPTImageGenerationModelsEnumMap[instance.imageModel]!,
      'imagesAmmount': instance.imagesAmmount,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$GPTCompletionModelsEnumMap = {
  GPTCompletionModels.gpt3_5Turbo: 'gpt3_5Turbo',
  GPTCompletionModels.gpt4: 'gpt4',
  GPTCompletionModels.gpt4Turbo: 'gpt4Turbo',
  GPTCompletionModels.gpt3_5Turbo0125: 'gpt3_5Turbo0125',
  GPTCompletionModels.gpt3_5Turbo16k_0613: 'gpt3_5Turbo16k_0613',
  GPTCompletionModels.gpt3_5Turbo16k: 'gpt3_5Turbo16k',
  GPTCompletionModels.gpt3_5Turbo0301: 'gpt3_5Turbo0301',
  GPTCompletionModels.gpt3_5Turbo0613: 'gpt3_5Turbo0613',
  GPTCompletionModels.gpt3_5Turbo1106: 'gpt3_5Turbo1106',
  GPTCompletionModels.gpt4_0125Preview: 'gpt4_0125Preview',
  GPTCompletionModels.gpt4TurboPreview: 'gpt4TurboPreview',
  GPTCompletionModels.gpt4Turbo2024_04_09: 'gpt4Turbo2024_04_09',
  GPTCompletionModels.gpt4_1106VisionPreview: 'gpt4_1106VisionPreview',
  GPTCompletionModels.gpt4_1106Preview: 'gpt4_1106Preview',
  GPTCompletionModels.gpt4_0613: 'gpt4_0613',
};

const _$GPTImageGenerationModelsEnumMap = {
  GPTImageGenerationModels.dallE2: 'dallE2',
  GPTImageGenerationModels.dallE3: 'dallE3',
};
