import 'package:flutter/material.dart';
import 'package:pawlse/THEMES/poppins.dart';

class senderNotif {
  final notifs = [
    [
      'Today',
      '@fzappy',
      'assets/avatar/man.png',
      '@cor14',
      'assets/avatar/woman.png'
    ],
    [
      'Yesterday',
      '@cor14',
      'assets/avatar/woman.png',
      '@fzappy',
      'assets/avatar/man.png'
    ],
    [
      'Nov 27',
      '@cor14',
      'assets/avatar/woman.png',
      '@fzappy',
      'assets/avatar/man.png'
    ],
  ];
}

class SingleNotification extends StatelessWidget {
  const SingleNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .80,
      child: ListView.builder(
        itemCount: senderNotif().notifs.length,
        itemBuilder: (context, index) {
          final current = senderNotif().notifs[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              SizedBox(
                height: 30,
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        indent: 60,
                        endIndent: 10,
                        thickness: 1,
                      ),
                    ),
                    const SizedBox(width: 8),
                    PoppinsText(
                        text: current[0],
                        size: 15,
                        font: FontWeight.w400,
                        color: Colors.black87),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Divider(
                        indent: 10,
                        endIndent: 60,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                tileColor: const Color.fromARGB(255, 246, 247, 248),
                trailing: const Icon(Icons.arrow_circle_right_rounded),
                title: PoppinsText(
                    text: current[1],
                    size: 15,
                    font: FontWeight.w600,
                    color: Colors.black87),
                subtitle: const PoppinsText(
                    text:
                        'Lorem ipsum dolor sit amet. Ab impedit accusamus ut ios repudiandae quidem et neque sint est quia doloribus. Id eie',
                    size: 13,
                    font: FontWeight.w500,
                    color: Colors.black87),
                leading: CircleAvatar(
                    radius: 40, backgroundImage: AssetImage(current[2])),
              ),
              const SizedBox(height: 10),
              ListTile(
                tileColor: const Color.fromARGB(255, 246, 247, 248),
                trailing: const Icon(Icons.arrow_circle_right_rounded),
                title: PoppinsText(
                    text: current[3],
                    size: 15,
                    font: FontWeight.w600,
                    color: Colors.black87),
                subtitle: const PoppinsText(
                    text:
                        'Lorem ipsum dolor sit amet. Ab impedit accusamus ut ios repudiandae quidem et neque sint est quia doloribus. Id eie',
                    size: 13,
                    font: FontWeight.w500,
                    color: Colors.black87),
                leading: CircleAvatar(
                    radius: 40, backgroundImage: AssetImage(current[4])),
              )
            ],
          );
        },
      ),
    );
  }
}
