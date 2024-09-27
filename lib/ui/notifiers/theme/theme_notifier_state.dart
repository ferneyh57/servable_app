import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'theme_notifier_state.freezed.dart';

@freezed
class ThemeNotifierState with _$ThemeNotifierState {
  const factory ThemeNotifierState({
    @Default(Colors.blueGrey) Color color,
    @Default(Brightness.dark) Brightness brightness,
  }) = _ThemeNotifierState;
}
