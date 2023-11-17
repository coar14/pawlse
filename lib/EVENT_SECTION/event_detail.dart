import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pawlse/THEMES/poppins.dart';

// ignore: camel_case_types
class event {
  final eventList = [
    'assets/img/1.jpg',
    'assets/img/2.jpg',
    'assets/img/3.jpg',
  ];
}

class EventDetails extends StatefulWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: event().eventList.length,
                itemBuilder: (context, index, realIndex) {
                  final curImage = event().eventList[index];
                  return buildImage(curImage, index);
                },
                options: CarouselOptions(
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                  autoPlay: true,
                  initialPage: _current,
                  height: MediaQuery.of(context).size.height * .5,
                ),
              ),
              Positioned.fill(
                top: MediaQuery.of(context).size.height * 0.48,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        PoppinsText(
                            text: 'Free Vaccination',
                            size: 24,
                            font: FontWeight.bold,
                            color: Color(0xFF8A98E1)),
                        PoppinsText(
                            text: 'Straynation Cebu & PAWS',
                            size: 18,
                            font: FontWeight.w600,
                            color: Colors.black)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.calendar_month_outlined),
                    SizedBox(width: 5),
                    PoppinsText(
                        text: 'December 11, 2023',
                        size: 16,
                        font: FontWeight.w600,
                        color: Colors.black)
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(width: 5),
                    PoppinsText(
                        text: '9:30AM - 4:30PM',
                        size: 16,
                        font: FontWeight.w600,
                        color: Colors.black)
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 5),
                    PoppinsText(
                        text: 'Brgy. Punta Princesa, Cebu City',
                        size: 16,
                        font: FontWeight.w600,
                        color: Colors.black)
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: PoppinsText(
                        text:
                            "Exciting news for pet parents! We're offering FREE vaccinations for your furry companions. Keep them healthy and happy without worrying about the cost.Exciting news for pet parents! We're offering FREE vaccinations for your furry companions. Keep them healthy and happy without worrying about the cost.",
                        size: 14,
                        font: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.redAccent,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          textStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {},
                      child: const Text('Interested'),
                    )),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget buildImage(String curImage, int index) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      width: double.infinity,
      child: Image.asset(
        curImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
