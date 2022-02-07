import 'package:flutter/material.dart';

final themeLight = ThemeData.light();
final themeDark = ThemeData.dark();
final appThemeLight = themeLight.copyWith(
  colorScheme: themeLight.colorScheme.copyWith(
    secondary: Colors.blue,
  ),
);
final appThemeDark = themeDark.copyWith(
  colorScheme: themeDark.colorScheme.copyWith(
    secondary: Colors.tealAccent,
  ),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.black45),
);

const Color iconColor = Colors.grey;
