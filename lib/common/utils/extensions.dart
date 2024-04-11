import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension BuildContextX on BuildContext {
  NavigatorState get navigator => Navigator.of(this);

  void pop() => navigator.pop();

  ThemeData get theme => Theme.of(this);

  bool get isDarkMode => theme.brightness == Brightness.dark;

  TextTheme get textTheme => theme.textTheme;

  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  void showSnackbar(String message, {bool error = false}) =>
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: textTheme.bodyMedium?.copyWith(
              color: error ? Colors.red : theme.cardColor,
            ),
          ),
        ),
      );
}

extension StringX on String {
  Future<String> copy() async {
    await Clipboard.setData(ClipboardData(text: this));
    return this;
  }
}

extension ThemeModeX on ThemeMode {
  IconData get icon => switch (this) {
        ThemeMode.system => Icons.brightness_4,
        ThemeMode.light => Icons.light_mode,
        ThemeMode.dark => Icons.dark_mode,
      };
}
