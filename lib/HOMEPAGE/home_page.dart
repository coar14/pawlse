import 'package:flutter/material.dart';

import 'package:pawlse/COMPONENTS/bottom_%20nav.dart';
import 'package:pawlse/HOMEPAGE/event_section.dart';
import 'package:pawlse/HOMEPAGE/home_screen.dart';
import 'package:pawlse/user_screen/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNav(
          selectedIndex: _selectedIndex,
          onTabTapped: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ),
        body: pages[_selectedIndex]);
  }

  final List<Widget> pages = [
    const HomeScreen(),
    const EventSectionUser(),
    const HomeScreen(),
    const EventSectionUser(),
    const UserProfile()
  ];
}
