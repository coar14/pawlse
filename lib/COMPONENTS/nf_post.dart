import 'package:flutter/material.dart';
import 'package:pawlse/THEMES/poppins.dart';

class postDetails {
  final postDets = [
    [
      'assets/img/jam.png',
      'Anne Junto',
      '@aneyaluv',
      '3hrs ago',
      '#Dogs',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
      'assets/img/d3.jpg',
      'assets/img/d2.jpg',
      'assets/img/d1.jpg'
    ],
    [
      'assets/avatar/man.png',
      'Felix Cena Jr.',
      '@fzappy',
      '11hrs ago',
      '#Birds',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
      'assets/img/b1.jpg',
      'assets/img/b2.jpg',
      'assets/img/b3.jpg'
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
      'assets/img/3.jpg'
    ],
  ];
}

class NFPost extends StatelessWidget {
  const NFPost({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .65,
      child: ListView.builder(
        itemCount: postDetails().postDets.length,
        itemBuilder: (context, index) {
          final current = postDetails().postDets[index];
          return Card(
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
                                PoppinsText(
                                    text: current[1],
                                    size: 16,
                                    font: FontWeight.w500,
                                    color: const Color.fromARGB(255, 0, 0, 0)),
                                PoppinsText(
                                    text: current[2],
                                    size: 12,
                                    font: FontWeight.w500,
                                    color:
                                        const Color.fromARGB(255, 48, 48, 48))
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
                                        const Color.fromARGB(255, 48, 48, 48)),
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
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: PoppinsText(
                        text: current[5],
                        size: 14,
                        font: FontWeight.w500,
                        color: const Color.fromARGB(255, 20, 20, 20)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .20,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .40,
                          height: MediaQuery.of(context).size.height * .20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(current[6]),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: MediaQuery.of(context).size.width * .40,
                          height: MediaQuery.of(context).size.height * .20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(current[7]),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: MediaQuery.of(context).size.width * .40,
                          height: MediaQuery.of(context).size.height * .20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(current[8]),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border, size: 35),
                        SizedBox(width: 15),
                        Icon(Icons.comment_rounded, size: 35)
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
