import 'package:flutter/material.dart';
import 'package:pawlse/getting_started/intro_screen.dart';
import 'package:pawlse/getting_started/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => IntroScreen(),
        'login':(context) => Login(),
      },
    );
  }
}