import 'package:flutter/material.dart';
import 'package:pawlse/THEMES/poppins.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  TextEditingController textcontroller = TextEditingController();
  final String text, hintText;
  final int lines;
  MyTextField(
      {super.key,
      required this.textcontroller,
      required this.text,
      required this.lines,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: PoppinsText(
              text: text,
              size: 16,
              font: FontWeight.w500,
              color: Colors.black87),
        ),
        Card(
          color: Colors.white,
          elevation: 0.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: TextField(
            controller: textcontroller,
            minLines: lines,
            maxLines: 6,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.create_rounded),
              hintText: hintText,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        )
      ],
    );
  }
}
