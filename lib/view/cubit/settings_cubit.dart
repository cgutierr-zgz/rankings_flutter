import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:rankings_flutter/data/models/settings.dart';

class SettingsCubit extends HydratedCubit<Settings> {
  SettingsCubit() : super(Settings());

  void changeTheme(ThemeMode themeMode) => emit(
        state.copyWith(themeMode: themeMode),
      );

  // void changeLocale(Locale locale) => emit(state.copyWith(locale: locale));

  @override
  Settings? fromJson(Map<String, dynamic> json) => Settings.fromJson(json);

  @override
  Map<String, dynamic>? toJson(Settings state) => state.toJson();
}
