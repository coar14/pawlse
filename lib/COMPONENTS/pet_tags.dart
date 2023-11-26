import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class iconTag {
  final icons = [
    ['assets/icons/dog.svg'],
    ['assets/icons/cat.svg'],
    ['assets/icons/fish.svg'],
    ['assets/icons/rooster.svg'],
    ['assets/icons/bird.svg'],
    ['assets/icons/rabbit.svg'],
    ['assets/icons/snake.svg'],
    ['assets/icons/spider.svg'],
    ['assets/icons/turtle.svg']
  ];
}

class PetTags extends StatefulWidget {
  const PetTags({Key? key}) : super(key: key);

  @override
  State<PetTags> createState() => _PetTagsState();
}

class _PetTagsState extends State<PetTags> {
  Set<int> tappedIndices = <int>{};

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 70,
      child: ListView.builder(
        itemCount: iconTag().icons.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final current = iconTag().icons[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                if (tappedIndices.contains(index)) {
                  tappedIndices.remove(index);
                } else {
                  tappedIndices.add(index);
                }
              });
            },
            child: Card(
              shape: const CircleBorder(),
              elevation: tappedIndices.contains(index) ? 5 : 3,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: tappedIndices.contains(index)
                    ? const Color.fromARGB(255, 186, 196, 248)
                    : const Color.fromARGB(255, 244, 245, 247),
                child: SvgPicture.asset(
                  current[0],
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
