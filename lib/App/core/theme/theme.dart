import 'package:flutter/material.dart';

const _primary = Color(0xFF494BD6);
const _background = Color(0xFFFAF8FF);
const _text = Color(0xFF131B2E);
const _border = Color(0xFFC7C4D7);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: _background,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primary,
    brightness: Brightness.light,
    primary: _primary,
    surface: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: _background,
    foregroundColor: _text,
    elevation: 0,
    scrolledUnderElevation: 0,
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Colors.white,
    selectedColor: Color(0xFFE2E7FF),
    side: BorderSide(color: _border),
    shape: StadiumBorder(),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
);
