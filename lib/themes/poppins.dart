import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinsText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight font;

  const PoppinsText(
      {super.key,
      required this.text,
      required this.size,
      required this.font,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(color: color, fontSize: size, fontWeight: font)),
    );
  }
}
