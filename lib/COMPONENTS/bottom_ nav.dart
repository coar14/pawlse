import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyBottomNav extends StatelessWidget {
  final int selectedIndex;
  const MyBottomNav({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      backgroundColor: Colors.white70,
      elevation: 2,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Iconsax.home), label: '1'),
        BottomNavigationBarItem(icon: Icon(Iconsax.notification), label: '1'),
        BottomNavigationBarItem(icon: Icon(Iconsax.add), label: '1'),
        BottomNavigationBarItem(icon: Icon(Iconsax.house), label: '1'),
        BottomNavigationBarItem(icon: Icon(Iconsax.personalcard), label: '1'),
      ],
    );
  }
}
