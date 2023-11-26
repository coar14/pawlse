import 'package:flutter/material.dart';
import 'package:pawlse/EVENT_SECTION/event_detail.dart';
import 'package:pawlse/THEMES/poppins.dart';

class eventsList {
  final List _events = [
    ['assets/img/event1.jpg', 'Rescue Roundup', 'NOV 18, 2023 AT 6:30PM'],
    ['assets/img/event2.jpg', 'Furry Friends Fair', 'NOV 30, 2023 AT 1:00PM'],
    ['assets/img/2.jpg', 'Paws & Claws Jubilee', 'NOV 30, 2023 AT 1:00PM']
  ];
}

class EventCard extends StatelessWidget {
  EventCard({super.key});
  final _eventsList = eventsList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .70,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _eventsList._events.length,
        itemBuilder: (context, index) {
          final cardEvent = _eventsList._events[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                          image: DecorationImage(
                              image: AssetImage(cardEvent[0]),
                              alignment: Alignment.topCenter,
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            PoppinsText(
                                color: Colors.black,
                                font: FontWeight.bold,
                                size: 18,
                                text: cardEvent[1]),
                            PoppinsText(
                                color: Colors.grey,
                                font: FontWeight.w600,
                                size: 14,
                                text: cardEvent[2]),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const EventDetails(),
                                          ));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xFF8A98E1),
                                                  Color(0xFF8A98E1)
                                                ]),
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
                                                PoppinsText(
                                                    text: 'Full Details',
                                                    size: 16,
                                                    font: FontWeight.w700,
                                                    color: Colors.white),
                                                SizedBox(width: 5),
                                                Icon(
                                                  Icons.arrow_forward_rounded,
                                                  size: 25,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    )
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
