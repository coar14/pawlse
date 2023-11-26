import 'package:flutter/material.dart';
import 'package:pawlse/THEMES/poppins.dart';

class myMessage extends StatelessWidget {
  final MainAxisAlignment pos1;
  final CrossAxisAlignment pos2;
  final String time;
  final String text;
  final Color color;
  final Color color3;

  final Color color2;
  const myMessage(
      {super.key,
      required this.pos1,
      required this.pos2,
      required this.text,
      required this.time,
      required this.color,
      required this.color3,
      required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
      child: Row(
        mainAxisAlignment: pos1,
        children: [
          Column(
            crossAxisAlignment: pos2,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .60,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(12)),
                child: PoppinsText(
                    text: text, size: 14, font: FontWeight.w400, color: color2),
              ),
              PoppinsText(
                  text: time, size: 12, font: FontWeight.w400, color: color3),
            ],
          )
        ],
      ),
    );
  }
}
