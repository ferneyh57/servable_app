import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serveable_app/ui/notifiers/theme/theme_notifier_state.dart';

class ThemeNotifier extends Notifier<ThemeNotifierState> {
  @override
  ThemeNotifierState build() {
    return const ThemeNotifierState();
  }

  void onChangeColor(Color color) {
    state = state.copyWith(color: color);
  }

  void onChangeBrightness(bool isDarkMode) {
    state = state.copyWith(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    );
  }
}
