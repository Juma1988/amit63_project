import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Color(0xFF1E88E5),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Color(0xFF90CAF9),
  ),
);

/*
Color primaryColor = Theme.of(context).colorScheme.primary;
Color accentColor = Theme.of(context).colorScheme.tertiary;
 */
