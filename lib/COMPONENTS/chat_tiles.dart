import 'package:flutter/material.dart';
import 'package:pawlse/THEMES/poppins.dart';

class recepientList {
  final recepient = [
    [
      'assets/avatar/man.png',
      'Felix Cena Jr.',
      'Hello Anne! I like your posts about your dogs. I hope we could be friends here...'
    ],
    [
      'assets/avatar/woman.png',
      'Maricor Masong',
      'Hello Anne! Would you like to join an event about dogs? If yes, we...'
    ],
    [
      'assets/img/straynation.jpg',
      'Straynation Cebu',
      "Hello Anne! We have noticed that you are an active pet enthusiast, would..."
    ],
    [
      'assets/avatar/man1.png',
      'Xilef Anec',
      'Hi Anne! I saw your post about your rabbit, is it hard to have them as pets?'
    ],
    [
      'assets/avatar/man.png',
      'Felix Cena Jr.',
      'Hello Anne! I like your post about your dogs. Would you like to pet mine?'
    ],
    [
      'assets/avatar/woman.png',
      'Maricor Masong',
      'Hello Anne! Would you like to join an event about dogs? If yes, say aw aw...'
    ],
    [
      'assets/img/straynation.jpg',
      'Straynation Cebu',
      "Hello Anne! We have noticed that you are an active pet enthusiast, would..."
    ],
    [
      'assets/avatar/man1.png',
      'Xilef Anec',
      'Hi Anne, would you like to be my owner? I can be whatever pet you want me to be. Rawr'
    ],
  ];
}

class ChatTiles extends StatelessWidget {
  const ChatTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: recepientList().recepient.length,
        itemBuilder: (context, index) {
          final current = recepientList().recepient[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 247, 248),
                  borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'chatbox');
                },
                contentPadding: const EdgeInsets.all(10),
                subtitle: PoppinsText(
                    text: current[2],
                    size: 12,
                    font: FontWeight.w500,
                    color: const Color.fromARGB(221, 22, 13, 13)),
                title: PoppinsText(
                    text: current[1],
                    size: 15,
                    font: FontWeight.w600,
                    color: Colors.black87),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(current[0]),
                    ),
                    const Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
