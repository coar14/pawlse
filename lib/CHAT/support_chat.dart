import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/CHAT/message.dart';
import 'package:pawlse/THEMES/poppins.dart';

class SupportChat extends StatelessWidget {
  const SupportChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Iconsax.arrow_left),
            iconSize: 30,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const ListTile(
              subtitle: PoppinsText(
                  text: '@pawlse-support',
                  size: 13,
                  font: FontWeight.w500,
                  color: Colors.black87),
              title: PoppinsText(
                  text: 'Customer Service',
                  size: 16,
                  font: FontWeight.w500,
                  color: Colors.black87),
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/img/logo.png')))),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .80,
              child: ListView(
                children: const [
                  SizedBox(height: 20),
                  myMessage(
                      pos1: MainAxisAlignment.end,
                      pos2: CrossAxisAlignment.end,
                      text:
                          'Lorem t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis auterure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat asowf xae awadf',
                      time: '9:11 AM',
                      color: Color(0xFF8A98E1),
                      color2: Color.fromARGB(255, 255, 255, 255),
                      color3: Color(0xFF8A98E1)),
                  myMessage(
                    pos1: MainAxisAlignment.start,
                    pos2: CrossAxisAlignment.start,
                    text:
                        'Lorem t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis auterure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat asowf xae awadf',
                    time: '2:29 PM',
                    color: Color(0xFFE2E7FF),
                    color2: Colors.black87,
                    color3: Colors.black45,
                  ),
                  myMessage(
                    pos1: MainAxisAlignment.start,
                    pos2: CrossAxisAlignment.start,
                    text:
                        'Lorem t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ',
                    time: '02:30 PM',
                    color: Color(0xFFE2E7FF),
                    color2: Colors.black87,
                    color3: Colors.black45,
                  ),
                  myMessage(
                      pos1: MainAxisAlignment.end,
                      pos2: CrossAxisAlignment.end,
                      text:
                          'Lorem t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea ',
                      time: '5:07 PM',
                      color: Color(0xFF8A98E1),
                      color2: Color.fromARGB(255, 255, 255, 255),
                      color3: Color(0xFF8A98E1)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLines: 6,
                        decoration: InputDecoration(
                            hintText: 'Message here',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)))),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          shape: BoxShape.rectangle,
                          border: Border.all(width: 1)),
                      height: 60,
                      width: 60,
                      child: const Icon(Icons.camera_alt_outlined),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          shape: BoxShape.rectangle,
                          border: Border.all(width: 1)),
                      height: 60,
                      width: 60,
                      child: const Icon(Icons.send_rounded),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
