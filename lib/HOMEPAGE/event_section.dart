import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
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
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            elevation: 1,
            backgroundColor: Colors.red[200],
            shape: const CircleBorder(
                side: BorderSide(width: 1, color: Colors.redAccent)),
            onPressed: () {},
            child: const Icon(
              Iconsax.add,
              size: 30,
              color: Colors.white,
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Iconsax.arrow_left),
              iconSize: 30,
              onPressed: () {
                Navigator.of(context).pop(context);
              },
            ),
            title: const PoppinsText(
                text: 'Events',
                size: 24,
                font: FontWeight.w600,
                color: Colors.black),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  color: Colors.grey,
                  indent: 5,
                  endIndent: 5,
                  thickness: 0.5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16)),
                              image: DecorationImage(
                                  image: AssetImage('assets/img/event1.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 200,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('SAT, NOV 18, 2023 AT 6:30PM'),
                                const Text('SCS ACQUAINTANCE PARTY'),
                                const Text('School of Computer Studies'),
                                const Text('205 interested'),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 100,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color.fromARGB(
                                                    255, 206, 203, 203)),
                                            height: 50,
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(Iconsax.star4,
                                                        size: 30),
                                                    PoppinsText(
                                                        text: 'Interested',
                                                        size: 16,
                                                        font: FontWeight.w600,
                                                        color: Colors.black)
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color.fromARGB(
                                                  255, 206, 203, 203)),
                                          height: 50,
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Iconsax.star4, size: 30),
                                                  PoppinsText(
                                                      text: 'Interested',
                                                      size: 16,
                                                      font: FontWeight.w600,
                                                      color: Colors.black)
                                                ],
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
