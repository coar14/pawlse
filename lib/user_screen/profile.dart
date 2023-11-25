import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:pawlse/THEMES/poppins.dart';

class profilePost {
  final userPost = [
    [
      'assets/img/jam.jpg',
      'Anne Junto',
      '@aneyaluv',
      '3hrs ago',
      '#Dogs',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
      'assets/img/d3.jpg',
      'assets/img/d2.jpg',
      'assets/img/d1.jpg',
      '56'
    ],
    [
      'assets/img/jam.jpg',
      'Anne Junto',
      '@aneyaluv',
      '11hrs ago',
      '#Birds, #Cats, #Dogs',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
      'assets/img/b3.jpg',
      'assets/img/d2.jpg',
      'assets/img/1.jpg',
      '43'
    ],
    [
      'assets/img/jam.jpg',
      'Anne Junto',
      '@aneyaluv',
      '3d ago',
      '#Cats',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
      'assets/img/1.jpg',
      'assets/img/2.jpg',
      'assets/img/3.jpg',
      '39'
    ],
  ];
}

class profileLikes {
  final userPost = [
    [
      'assets/avatar/woman.png',
      'Maricor Masong',
      '@cor14',
      '3hrs ago',
      '#Dogs',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
      'assets/img/d3.jpg',
      'assets/img/d2.jpg',
      'assets/img/d1.jpg',
      '45'
    ],
    [
      'assets/avatar/man.png',
      'Felix Cena Jr.',
      '@fzappy',
      '11hrs ago',
      '#Birds, #Cats, #Dogs',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
      'assets/img/b3.jpg',
      'assets/img/d2.jpg',
      'assets/img/1.jpg',
      '43'
    ],
    [
      'assets/avatar/woman.png',
      'Maricor Masong',
      '@cor14',
      '3d ago',
      '#Cats',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
      'assets/img/1.jpg',
      'assets/img/2.jpg',
      'assets/img/3.jpg',
      '39'
    ],
  ];
}

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late bool tap = true;
  late int heartCount = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.user_add,
                    size: 35,
                  )),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    size: 35,
                  ),
                )
              ]),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InstaImageViewer(
                          backgroundIsTransparent: true,
                          child: SizedBox(
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/img/jam.jpg'),
                              radius: 45,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PoppinsText(
                                  text: 'Anne Junto',
                                  size: 18,
                                  font: FontWeight.w600,
                                  color: Colors.black),
                              PoppinsText(
                                  text: 'Dog and Rabbit Owner',
                                  size: 14,
                                  font: FontWeight.w500,
                                  color: Colors.black)
                            ],
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      PoppinsText(
                                          text: '34',
                                          size: 13,
                                          font: FontWeight.w500,
                                          color: Colors.black),
                                      PoppinsText(
                                          text: 'Following',
                                          size: 13,
                                          font: FontWeight.w500,
                                          color: Colors.black)
                                    ],
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  indent: 10,
                                  endIndent: 10,
                                  color: Color(0xFF8A98E1),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      PoppinsText(
                                          text: '47',
                                          size: 13,
                                          font: FontWeight.w500,
                                          color: Colors.black),
                                      PoppinsText(
                                          text: 'Follower',
                                          size: 13,
                                          font: FontWeight.w500,
                                          color: Colors.black)
                                    ],
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  color: Color(0xFF8A98E1),
                                  indent: 10,
                                  endIndent: 10,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: PoppinsText(
                                        text: 'Add Friend',
                                        size: 12,
                                        font: FontWeight.w500,
                                        color: Color(0xFF8A98E1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(color: Color(0xFF8A98E1)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PoppinsText(
                        text: '@aneyaluv',
                        size: 13,
                        font: FontWeight.w500,
                        color: Colors.black87),
                    const PoppinsText(
                        text:
                            "Hey there! I'm Anne, a passionate animal lover with a heart full of love for my fur babies. ",
                        size: 13,
                        font: FontWeight.w500,
                        color: Colors.black87),
                    const SizedBox(height: 10),
                    const SizedBox(
                      height: 30,
                      child: TabBar(
                          unselectedLabelColor: Colors.black87,
                          dividerColor: Color(0xFF8A98E1),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorPadding:
                              EdgeInsets.symmetric(horizontal: 10),
                          labelPadding: EdgeInsets.symmetric(horizontal: 20),
                          tabs: [
                            Tab(
                              text: 'Post',
                            ),
                            Tab(
                              text: 'Likes',
                            )
                          ]),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .55,
                      width: double.infinity,
                      child: TabBarView(children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .50,
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: profilePost().userPost.length,
                            itemBuilder: (context, index) {
                              final current = profilePost().userPost[index];
                              return Card(
                                color: Colors.white,
                                elevation: 0.2,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundImage:
                                                AssetImage(current[0]),
                                          ),
                                          const SizedBox(width: 15),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    PoppinsText(
                                                        text: current[1],
                                                        size: 16,
                                                        font: FontWeight.w500,
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 0, 0, 0)),
                                                    PoppinsText(
                                                        text: current[2],
                                                        size: 12,
                                                        font: FontWeight.w500,
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 48, 48, 48))
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    PoppinsText(
                                                        text: current[3],
                                                        size: 12,
                                                        font: FontWeight.w400,
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 48, 48, 48)),
                                                    const SizedBox(height: 3),
                                                    PoppinsText(
                                                        text: current[4],
                                                        size: 12,
                                                        font: FontWeight.w500,
                                                        color: Colors.black)
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16),
                                        child: PoppinsText(
                                            text: current[5],
                                            size: 14,
                                            font: FontWeight.w500,
                                            color: const Color.fromARGB(
                                                255, 20, 20, 20)),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 237, 238, 240),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomLeft:
                                                    Radius.circular(20))),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .20,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            InstaImageViewer(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .40,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .20,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            current[6]),
                                                        fit: BoxFit.contain)),
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            InstaImageViewer(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .40,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .20,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            current[7]),
                                                        fit: BoxFit.contain)),
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            InstaImageViewer(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .40,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .20,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            current[8]),
                                                        fit: BoxFit.contain)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    tap = !tap;
                                                    if (tap == false) {
                                                      heartCount--;
                                                    } else {
                                                      heartCount++;
                                                    }
                                                  });
                                                },
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                        tap == true
                                                            ? Icons.favorite
                                                            : Icons
                                                                .favorite_border,
                                                        color: tap == true
                                                            ? Colors.redAccent
                                                            : Colors.black87,
                                                        size: 35),
                                                    Text('$heartCount')
                                                  ],
                                                )),
                                            const SizedBox(width: 15),
                                            Column(children: [
                                              const Icon(
                                                Icons.comment_rounded,
                                                size: 35,
                                                color: Colors.black54,
                                              ),
                                              Text(current[9])
                                            ])
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .50,
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: profileLikes().userPost.length,
                            itemBuilder: (context, index) {
                              final current = profileLikes().userPost[index];
                              return Card(
                                color: Colors.white,
                                elevation: 0.2,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundImage:
                                                AssetImage(current[0]),
                                          ),
                                          const SizedBox(width: 15),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    PoppinsText(
                                                        text: current[1],
                                                        size: 16,
                                                        font: FontWeight.w500,
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 0, 0, 0)),
                                                    PoppinsText(
                                                        text: current[2],
                                                        size: 12,
                                                        font: FontWeight.w500,
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 48, 48, 48))
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    PoppinsText(
                                                        text: current[3],
                                                        size: 12,
                                                        font: FontWeight.w400,
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 48, 48, 48)),
                                                    const SizedBox(height: 3),
                                                    PoppinsText(
                                                        text: current[4],
                                                        size: 12,
                                                        font: FontWeight.w500,
                                                        color: Colors.black)
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16),
                                        child: PoppinsText(
                                            text: current[5],
                                            size: 14,
                                            font: FontWeight.w500,
                                            color: const Color.fromARGB(
                                                255, 20, 20, 20)),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 237, 238, 240),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomLeft:
                                                    Radius.circular(20))),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .20,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            InstaImageViewer(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .40,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .20,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            current[6]),
                                                        fit: BoxFit.contain)),
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            InstaImageViewer(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .40,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .20,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            current[7]),
                                                        fit: BoxFit.contain)),
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            InstaImageViewer(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .40,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .20,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            current[8]),
                                                        fit: BoxFit.contain)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    tap = !tap;
                                                    if (tap == false) {
                                                      heartCount--;
                                                    } else {
                                                      heartCount++;
                                                    }
                                                  });
                                                },
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                        tap == true
                                                            ? Icons.favorite
                                                            : Icons
                                                                .favorite_border,
                                                        color: tap == true
                                                            ? Colors.redAccent
                                                            : Colors.black87,
                                                        size: 35),
                                                    Text('$heartCount')
                                                  ],
                                                )),
                                            const SizedBox(width: 15),
                                            Column(children: [
                                              const Icon(
                                                Icons.comment_rounded,
                                                size: 35,
                                                color: Colors.black54,
                                              ),
                                              Text(current[9])
                                            ])
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ]),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
