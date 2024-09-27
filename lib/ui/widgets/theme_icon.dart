// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ThemeIcon extends StatelessWidget {
  final bool isDarkMode;
  final void Function(bool isDarkMode) onThemeChange;
  const ThemeIcon({
    super.key,
    required this.isDarkMode,
    required this.onThemeChange,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onThemeChange(!isDarkMode);
      },
      icon: Icon(isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
    );
  }
}
