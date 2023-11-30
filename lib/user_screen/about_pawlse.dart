import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/THEMES/poppins.dart';

class aboutPawlse {
  final pawlse = [
    [
      'VISION',
      'Pawlse envisions a global hub for pet lovers, fostering joy, connection, and a shared commitment to animal welfare. We aim to be the go-to destination for personalized pet-related content, leveraging technology to celebrate the companionship animals bring, and make a tangible impact on the lives of those in need. Our commitment to inclusivity extends to every corner of our community, where every animal, strays or pets, is cherished and embraced.'
    ],
    [
      'MISSION',
      "Pawlse pursuits to create an innovative and inclusive platform where pet owners, enthusiasts, and organizations can connect, share knowledge, and collaborate for the well-being of animals, with a particular emphasis on supporting strays. Through technology-driven empowerment and positive engagement, Pawlse aims to amplify the impact of individuals and organizations in the animal welfare space, contributing to a world where every animal is loved and cared for regardless of their breed and class."
    ],
    [
      'MORE INFO',
      "Pawlse was founded by a group of dedicated individuals with diverse expertise and a shared love for pets. The founding members bring a combination of skills in technology, business development and marketing. Their collective passion for creating a positive impact on the lives of pets and their owners forms the core foundation of Pawlse."
    ]
  ];
}

class AboutPawlse extends StatelessWidget {
  const AboutPawlse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const PoppinsText(
            text: 'About Pawlse',
            size: 20,
            font: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 0.867)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .05),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width * .25,
                            backgroundImage:
                                const AssetImage('assets/img/logo.png'),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: PoppinsText(
                              text:
                                  "Pawlse is a social media app designed to bring together pet owners, animal enthusiasts, and animal organizations in a vibrant and engaging online community. The platform is dedicated to celebrating the diverse and wonderful world of animals, with a primary focus on strays; commonly dogs and cats. Pawlse provides a supportive and inclusive space where users can share heartwarming stories, entertaining contents, and connect with like-minded individuals.",
                              size: 15,
                              font: FontWeight.w500,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Divider(
                  indent: 5,
                  endIndent: 5,
                  thickness: 2.5,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: aboutPawlse().pawlse.length,
                  itemBuilder: (context, index) {
                    final current = aboutPawlse().pawlse[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Card(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 25),
                          padding: const EdgeInsets.all(15),
                          height: MediaQuery.of(context).size.height * .60,
                          width: MediaQuery.of(context).size.width * .60,
                          child: ListView(
                            padding: const EdgeInsets.all(20),
                            children: [
                              Text(
                                current[0],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                current[1],
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
