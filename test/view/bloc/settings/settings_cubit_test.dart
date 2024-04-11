/*import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rankings_flutter/data/models/settings.dart';
import 'package:rankings_flutter/view/cubit/settings_cubit.dart';

class MockStorage extends Mock implements Storage {}

class MockSettingsCubit extends MockCubit<Settings> implements SettingsCubit {}

late Storage storage;
late SettingsCubit settingsCubit;

void setUpStorage() {
  storage = MockStorage();
  when(() => storage.write(any(), any() as dynamic)).thenAnswer(
    (_) async {},
  );
  HydratedBloc.storage = storage;
}

void setUpSettingsCubit() {
  setUpStorage();
  settingsCubit = SettingsCubit();
}

void main() {
  group('SettingsCubit', () {
    late SettingsCubit cubit;
    setUp(() {
      cubit = MockSettingsCubit();
      when(() => cubit.state).thenReturn(Settings());

      setUpSettingsCubit();
    });
    test('initial state theme is system mode', () {
      expect(settingsCubit.state.themeMode, equals(ThemeMode.system));
    });

    group('Toogle themeMode', () {
      blocTest<SettingsCubit, Settings>(
        'updates themeMode to dark',
        build: SettingsCubit.new,
        act: (bloc) {
          bloc.changeTheme(ThemeMode.dark);
        },
        expect: () {
          return [Settings(themeMode: ThemeMode.dark)];
        },
      );

      blocTest<SettingsCubit, Settings>(
        'updates themeMode to light',
        build: SettingsCubit.new,
        act: (bloc) {
          bloc.changeTheme(ThemeMode.light);
        },
        expect: () {
          return [Settings(themeMode: ThemeMode.light)];
        },
      );

      blocTest<SettingsCubit, Settings>(
        'updates themeMode',
        build: SettingsCubit.new,
        act: (bloc) {
          bloc
            ..changeTheme(ThemeMode.dark)
            ..changeTheme(ThemeMode.light)
            ..changeTheme(ThemeMode.system);
        },
        expect: () {
          return [
            Settings(themeMode: ThemeMode.dark),
            Settings(themeMode: ThemeMode.light),
            Settings(),
          ];
        },
      );
    });

    group('json (de)serialization', () {
      test('fromJson converts from json to state', () {
        final result = settingsCubit.fromJson({
          'themeMode': ThemeMode.system.name,
        });
        expect(result, Settings());
      });
    });

    test('toJson converts from state to json', () {
      final result = settingsCubit.toJson(
        Settings(),
      );
      expect(result, {'themeMode': ThemeMode.system.name});
    });
  });
}
*/
