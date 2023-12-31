import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/COMPONENTS/event_card.dart';
import 'package:pawlse/COMPONENTS/search_bar.dart';
import 'package:pawlse/THEMES/poppins.dart';

class EventSectionUser extends StatefulWidget {
  const EventSectionUser({super.key});

  @override
  State<EventSectionUser> createState() => _EventSectionUserState();
}

class _EventSectionUserState extends State<EventSectionUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 1,
          backgroundColor: Colors.redAccent,
          shape: const CircleBorder(
              side: BorderSide(width: 1, color: Colors.white)),
          onPressed: () {
            Navigator.pushNamed(context, 'create_event');
          },
          child: const Icon(
            Iconsax.add,
            size: 30,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const PoppinsText(
              text: 'Events',
              size: 24,
              font: FontWeight.w600,
              color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  color: Colors.grey,
                  indent: 5,
                  endIndent: 5,
                  thickness: 0.5,
                ),
                const SizedBox(height: 10),
                const MySearchBar(hintText: 'Search an upcoming event'),
                EventCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
