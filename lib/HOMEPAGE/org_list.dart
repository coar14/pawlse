import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/THEMES/poppins.dart';

class orgList {
  final orgs = [
    [
      'assets/img/logo.png',
      'Pawlse',
      'Pawlse is an innovative organization that has developed the Pawlse app, a unique social media platform tailored for pet enthusiasts and animal-related organizations. This app serves as a vibrant community hub where individuals passionate about pets can connect, share experiences, and celebrate the joys of pet ownership'
    ],
    [
      'assets/avatar/paws.png',
      'Philippine Animal Welfare Society (PAWS)',
      'PAWS is a non-profit organization in the Philippines dedicated to promoting the humane treatment of animals. They focus on animal rescue and rehabilitation'
    ],
    [
      'assets/avatar/caritas.png',
      'Caritas Manila - Animal Program',
      'Caritas Manila, the social service arm of the Archdiocese of Manila, runs an Animal Program that aims to address the needs of stray animals'
    ],
    [
      'assets/img/straynation.jpg',
      'Straynation Cebu',
      "Hello Anne! We have noticed that you are an active pet enthusiast, would..."
    ],
    [
      'assets/avatar/ak.png',
      'Animal Kingdom Foundation',
      'Animal Kingdom Foundation is an animal welfare organization that addresses issues such as animal cruelty, neglect, and abandonment. They work on rescue and rehabilitation programs, as well as advocating for the enforcement of animal welfare laws in the Philippines'
    ],
    [
      'assets/avatar/iro.png',
      'Island Rescue Organization (IRO)',
      'IRO operates in Cebu to rescue and rehabilitate animals in distress. They work on rehoming rescued animals, providing veterinary care, and educating the community about the proper treatment of pets and stray animals.'
    ],
    [
      'assets/avatar/bf.png',
      'Best Friends Animal Society:',
      "Best Friends Animal Society is dedicated to ending the killing of animals in America's shelters. They focus on building community programs and partnerships across the country to save the lives of animals through adoption, spaying and neutering, and promoting humane treatment."
    ],
    [
      'assets/avatar/wl.png',
      'Wildlife Conservation Society (WCS)',
      'The Wildlife Conservation Society is committed to saving wildlife and wild places worldwide. They manage wildlife reserves and conduct scientific research to understand and protect endangered species. WCS also engages in global conservation efforts to ensure a sustainable future for both wildlife and people.'
    ],
  ];
}

class OrgList extends StatelessWidget {
  const OrgList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth: 30,
        title: const ListTile(
          horizontalTitleGap: 5,
          leading: Icon(
            Icons.verified_user_rounded,
            color: Colors.blueAccent,
          ),
          title: PoppinsText(
              text: 'Organizations',
              size: 24,
              font: FontWeight.w600,
              color: Colors.black87),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Divider(),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .85,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: orgList().orgs.length,
                          itemBuilder: (context, index) {
                            final current = orgList().orgs[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 246, 247, 248),
                                    borderRadius: BorderRadius.circular(16)),
                                child: ListTile(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'org_profile');
                                  },
                                  contentPadding: const EdgeInsets.all(10),
                                  subtitle: Text(
                                    current[2],
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87)),
                                  ),
                                  title: Text(
                                    current[1],
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black87)),
                                  ),
                                  leading: Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(current[0]),
                                      ),
                                      const Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Icon(
                                            Icons.verified_user_rounded,
                                            size: 18,
                                            color: Colors.blueAccent,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
