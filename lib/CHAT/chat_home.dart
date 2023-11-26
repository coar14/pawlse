import 'package:flutter/material.dart';
import 'package:pawlse/COMPONENTS/chat_tiles.dart';
import 'package:pawlse/COMPONENTS/search_bar.dart';
import 'package:pawlse/THEMES/poppins.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const ListTile(
                subtitle: PoppinsText(
                    text: '@aneyaluv',
                    size: 14,
                    font: FontWeight.w500,
                    color: Colors.black87),
                title: PoppinsText(
                    text: 'Anne Junto',
                    size: 16,
                    font: FontWeight.w600,
                    color: Colors.black87),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/img/jam.jpg'),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: MySearchBar(hintText: 'Search recepient...')),
              const SizedBox(height: 10),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .65,
                  child: const Column(
                    children: [ChatTiles()],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
