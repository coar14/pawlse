import 'package:flutter/material.dart';

class defaultImages {
  final imgs = [
    'assets/img/1.jpg',
    'assets/img/2.jpg',
    'assets/img/d2.jpg',
    'assets/img/jam.jpg',
    'assets/img/b1.jpg'
  ];
}

class DefaultImages extends StatelessWidget {
  const DefaultImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: defaultImages().imgs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87, width: .5),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(defaultImages().imgs[index]))),
            ),
          );
        },
      ),
    );
  }
}
