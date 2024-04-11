import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:rankings_flutter/data/models/settings.dart';
import 'package:rankings_flutter/data/services/open_ai_service.dart';

class SettingsCubit extends HydratedCubit<Settings> {
  SettingsCubit() : super(Settings());

  void changeTheme(ThemeMode themeMode) => emit(
        state.copyWith(themeMode: themeMode),
      );

  void changeLocale(Locale locale) => emit(state.copyWith(locale: locale));

  void changeChatModel(GPTCompletionModels model) =>
      emit(state.copyWith(chatModel: model));

  void changeImageModel(GPTImageGenerationModels model) =>
      emit(state.copyWith(imageModel: model, imagesAmmount: model.minImages));

  void incremenetImageQty() {
    final max = state.imageModel.maxImages;
    final newAmount = state.imagesAmmount + 1;
    if (newAmount <= max) {
      emit(state.copyWith(imagesAmmount: newAmount));
    }
  }

  void decreaseImageQty() {
    final min = state.imageModel.minImages;
    final newAmount = state.imagesAmmount - 1;
    if (newAmount >= min) {
      emit(state.copyWith(imagesAmmount: newAmount));
    }
  }

  @override
  Settings? fromJson(Map<String, dynamic> json) => Settings.fromJson(json);

  @override
  Map<String, dynamic>? toJson(Settings state) => state.toJson();
}
