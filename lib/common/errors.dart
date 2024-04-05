import 'package:flutter/material.dart';
import 'package:rankings_flutter/common/gen/l10n/l10n.dart';

enum Errors implements Exception {
  invalidResponse,
  invlidData,
  unableToComplete;

  String getLocalizedErrorMessage(BuildContext context) {
    final l10n = L10n.of(context);

    return switch (this) {
      // ...
      _ => l10n.completionsError,
    };
  }
}
