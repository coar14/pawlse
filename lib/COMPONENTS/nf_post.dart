import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:pawlse/THEMES/poppins.dart';

class staticDetails {
  final details = [
    'assets/img/jam.jpg',
    'Anne Junto',
    '@aneyaluv',
    'assets/img/d3.jpg',
    'assets/img/d2.jpg',
    'assets/img/d1.jpg',
  ];
}

class postDetails {
  final postDets = [
    [
      'assets/img/straynation.jpg',
      'Straynation Cebu',
      '@straynationcebuofficial',
      '7hrs ago',
      '#Dogs',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
      'assets/img/stray1.jpg',
      'assets/img/stray2.jpg',
      'assets/img/stray3.jpg',
      '340'
    ],
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
      'assets/avatar/man.png',
      'Felix Cena Jr.',
      '@fzappy',
      '11hrs ago',
      '#Birds, #Dogs',
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

class NFPost extends StatefulWidget {
  const NFPost({Key? key}) : super(key: key);

  @override
  State<NFPost> createState() => _NFPostState();
}

class _NFPostState extends State<NFPost> {
  late List<bool> tapStates;
  late List<int> heartCounts;

  @override
  void initState() {
    super.initState();
    tapStates = List.generate(postDetails().postDets.length, (index) => true);
    heartCounts = List.generate(postDetails().postDets.length, (index) => 29);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.60,
      child: ListView.builder(
        itemCount: postDetails().postDets.length,
        itemBuilder: (context, index) {
          final current = postDetails().postDets[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'org_profile');
            },
            child: Card(
              color: Colors.white,
              elevation: 0.2,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(current[0]),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      PoppinsText(
                                        text: current[1],
                                        size: 16,
                                        font: FontWeight.w500,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      const Icon(
                                        Icons.verified_rounded,
                                        color: Colors.blueAccent,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                  PoppinsText(
                                    text: current[2],
                                    size: 12,
                                    font: FontWeight.w500,
                                    color:
                                        const Color.fromARGB(255, 48, 48, 48),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  PoppinsText(
                                    text: current[3],
                                    size: 12,
                                    font: FontWeight.w400,
                                    color:
                                        const Color.fromARGB(255, 48, 48, 48),
                                  ),
                                  const SizedBox(height: 3),
                                  PoppinsText(
                                    text: current[4],
                                    size: 12,
                                    font: FontWeight.w500,
                                    color: Colors.black,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: PoppinsText(
                        text: current[5],
                        size: 14,
                        font: FontWeight.w500,
                        color: const Color.fromARGB(255, 20, 20, 20),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 246, 247, 248),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          InstaImageViewer(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.40,
                              height: MediaQuery.of(context).size.height * 0.20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(current[6]),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          InstaImageViewer(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.40,
                              height: MediaQuery.of(context).size.height * 0.20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(current[7]),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          InstaImageViewer(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.40,
                              height: MediaQuery.of(context).size.height * 0.20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(current[8]),
                                  fit: BoxFit.contain,
                                ),
                              ),
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
                                tapStates[index] = !tapStates[index];
                                if (tapStates[index] == false) {
                                  heartCounts[index]++;
                                } else {
                                  heartCounts[index]--;
                                }
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  tapStates[index]
                                      ? Icons.favorite_border
                                      : Icons.favorite,
                                  color: tapStates[index]
                                      ? Colors.black87
                                      : Colors.redAccent,
                                  size: 35,
                                ),
                                Text('${heartCounts[index]}'),
                              ],
                            ),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, 'comment');
                                },
                                child: const Icon(
                                  Icons.comment_rounded,
                                  size: 35,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(current[9]),
                            ],
                          )
                        ],
                      ),
                    ),
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
