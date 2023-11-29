import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/THEMES/poppins.dart';

class Comment {
  final comments = [
    [
      'Anne Junto',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
      'assets/img/jam.jpg'
    ],
    [
      'Felix Cena Jr',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
      'assets/avatar/man.png'
    ],
    [
      'Marico Masong',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
      'assets/avatar/woman.png'
    ],
    [
      'Straynation Cebu',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
      'assets/img/straynation.jpg'
    ],
    [
      'Xilef Anec',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
      'assets/avatar/man1.png'
    ],
    [
      'Straynation Cebu',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
      'assets/img/straynation.jpg'
    ],
  ];
}

class CommentSection extends StatelessWidget {
  const CommentSection({super.key});

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
            text: 'Comment Section',
            size: 20,
            font: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 0.867)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .80,
              child: ListView.builder(
                itemCount: Comment().comments.length,
                itemBuilder: (context, index) {
                  final current = Comment().comments[index];
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 246, 247, 248)),
                      child: ExpansionTile(
                        childrenPadding: const EdgeInsets.all(10),
                        shape:
                            const Border.symmetric(horizontal: BorderSide.none),
                        title: PoppinsText(
                            text: current[0],
                            size: 14,
                            font: FontWeight.w500,
                            color: Colors.black87),
                        subtitle: PoppinsText(
                            text: current[1],
                            size: 13,
                            font: FontWeight.w400,
                            color: Colors.black54),
                        trailing: const PoppinsText(
                            text: 'Reply',
                            size: 14,
                            font: FontWeight.w500,
                            color: Colors.blueAccent),
                        leading: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(current[2])),
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: const TextField(
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    hintText: "Comment here",
                                    suffixIcon: Icon(
                                      Icons.send,
                                      color: Colors.blueAccent,
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLines: 6,
                        decoration: InputDecoration(
                            hintText: 'Comment here',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)))),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          shape: BoxShape.rectangle,
                          border: Border.all(width: 1)),
                      height: 60,
                      width: 60,
                      child: const Icon(Icons.camera_alt_outlined),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          shape: BoxShape.rectangle,
                          border: Border.all(width: 1)),
                      height: 60,
                      width: 60,
                      child: const Icon(Icons.send_rounded),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
