import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  AppLocalizations get localization => AppLocalizations.of(this)!;

  void showCustomSnackBar(String message, {bool isError = false}) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: isError ? colorScheme.error : null,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
