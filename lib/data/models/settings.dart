import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings_flutter/data/services/open_ai_service.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  factory Settings({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @_LocaleConverter() @Default(null) Locale? locale,
    @Default(GPTCompletionModels.gpt3_5Turbo) GPTCompletionModels chatModel,
    @Default(GPTImageGenerationModels.dallE2)
    GPTImageGenerationModels imageModel,
    @Default(1) int imagesAmmount,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

final class _LocaleConverter implements JsonConverter<Locale?, String?> {
  const _LocaleConverter();

  @override
  Locale? fromJson(String? json) {
    if (json == null) return null;

    final parts = json.split('_');

    if (parts.length == 1) {
      return Locale(parts[0]);
    } else if (parts.length == 2) {
      return Locale(parts[0], parts[1]);
    }

    return null;
  }

  @override
  String? toJson(Locale? object) {
    if (object == null) return null;
    if (object.countryCode == null) return object.languageCode;

    return '${object.languageCode}_${object.countryCode}';
  }
}
