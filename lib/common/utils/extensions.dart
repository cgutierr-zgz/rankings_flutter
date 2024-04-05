import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  bool get isDarkMode => theme.brightness == Brightness.dark;

  TextTheme get textTheme => theme.textTheme;

  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  void showSnackbar(String message, {bool error = false}) =>
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: textTheme.bodyMedium
                ?.copyWith(color: error ? Colors.red : null),
          ),
        ),
      );
}
