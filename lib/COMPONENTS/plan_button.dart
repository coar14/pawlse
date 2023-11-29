import 'package:flutter/material.dart';
import 'package:pawlse/THEMES/poppins.dart';

class PlanButton extends StatelessWidget {
  final String text;
  const PlanButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFF8A98E1), width: 1)),
      child: Align(
        alignment: Alignment.center,
        child: PoppinsText(
            text: text,
            size: 18,
            font: FontWeight.w600,
            color: const Color(0xff8A98E1)),
      ),
    );
  }
}
