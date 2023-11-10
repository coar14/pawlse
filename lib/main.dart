import 'package:flutter/material.dart';
import 'package:pawlse/getting_started/intro_screen.dart';
import 'package:pawlse/getting_started/login.dart';
import 'package:pawlse/themes/font_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const IntroScreen(),
        'login': (context) => const Login(),
      },
    );
  }
}
