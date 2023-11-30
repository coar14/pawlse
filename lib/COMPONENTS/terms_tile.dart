import 'package:flutter/material.dart';
import 'package:pawlse/THEMES/poppins.dart';

class TermsTile extends StatelessWidget {
  final String text;
  const TermsTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: const Border.symmetric(horizontal: BorderSide.none),
      title: PoppinsText(
          text: text, size: 14, font: FontWeight.w500, color: Colors.blueGrey),
      children: const [
        PoppinsText(
            text:
                "Lorem t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis auterure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat asowf xae awadf",
            size: 13,
            font: FontWeight.w500,
            color: Colors.black87)
      ],
    );
  }
}
