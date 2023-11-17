import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabTapped;
  const MyBottomNav(
      {super.key, required this.selectedIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: const IconThemeData(color: Color(0xFF8A98E1)),
      currentIndex: selectedIndex,
      backgroundColor: Colors.white70,
      elevation: 1,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35,
      type: BottomNavigationBarType.fixed,
      onTap: onTabTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.feed_outlined), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.create), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.event), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '1'),
      ],
    );
  }
}
