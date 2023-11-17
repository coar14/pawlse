import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide:
                    const BorderSide(color: Color(0xFF8A98E1), width: 2)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            hintText: 'Search event',
            suffixIcon: const Icon(
              Icons.search,
              size: 30,
            )),
      ),
    );
  }
}
