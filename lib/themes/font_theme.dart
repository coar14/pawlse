import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme);
}

class TTextTheme {
  TTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
      headlineMedium: const TextStyle().copyWith(
          fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
      headlineSmall: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black));
}
