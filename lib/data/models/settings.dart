import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  factory Settings({
    @Default(ThemeMode.system) ThemeMode themeMode,
    // @_LocaleConverter() @Default(null) Locale? locale,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

/*
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
*/
