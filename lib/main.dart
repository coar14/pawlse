import 'package:flutter/material.dart';
import 'package:pawlse/HOMEPAGE/home_page.dart';
import 'package:pawlse/HOMEPAGE/notification.dart';
import 'package:pawlse/getting_started/auth_page.dart';
import 'package:pawlse/getting_started/intro_screen.dart';
import 'package:pawlse/getting_started/login.dart';
import 'package:pawlse/getting_started/signup.dart';
import 'package:pawlse/getting_started/signup_org.dart';
import 'package:pawlse/themes/font_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pawlse/user_screen/edit_profile.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        'home_page': (context) => const HomePage(),
        'auth': (context) => const AuthPage(),
        'login': (context) => const LoginScreen(),
        'signup': (context) => const SignUpScreen(),
        'signupOrg': (context) => const SignUpOrg(),
        'edit_profile': (context) => const EditProfile(),
        'notification': (context) => MyNotifications(),
      },
    );
  }
}
