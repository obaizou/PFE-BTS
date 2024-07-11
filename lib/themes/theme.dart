import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
        background: Colors.white,
        primary: Colors.white,
        secondary: Color.fromARGB(26, 194, 187, 187)));
ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme:
        const ColorScheme.dark(background: Color.fromARGB(255, 0, 0, 0)));
