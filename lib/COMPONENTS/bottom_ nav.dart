// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      backgroundColor: Colors.white,
      elevation: 0.5,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home1.svg',
              width: 35,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home2.svg',
              color: const Color(0xFF8A98E1),
              width: 35,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/notif1.svg',
              width: 35,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/notif2.svg',
              color: const Color(0xFF8A98E1),
              width: 35,
            ),
            label: 'Notification'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/message1.svg',
              width: 35,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/message2.svg',
              color: const Color(0xFF8A98E1),
              width: 35,
            ),
            label: 'Chat'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/event1.svg',
              width: 35,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/event2.svg',
              color: const Color(0xFF8A98E1),
              width: 35,
            ),
            label: 'Event'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/person1.svg',
              width: 35,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/person2.svg',
              color: const Color(0xFF8A98E1),
              width: 35,
            ),
            label: 'Profile'),
      ],
    );
  }
}
