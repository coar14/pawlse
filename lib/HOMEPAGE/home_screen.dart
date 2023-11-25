import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawlse/COMPONENTS/nf_post.dart';
import 'package:pawlse/COMPONENTS/search_bar.dart';
import 'package:pawlse/THEMES/poppins.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  Future signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const PoppinsText(
                        text: 'News Feed',
                        size: 24,
                        font: FontWeight.bold,
                        color: Color.fromARGB(255, 17, 17, 17)),
                    GestureDetector(
                      onTap: () {
                        signOutUser();
                        Navigator.pushNamed(context, 'auth');
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/img/logo.png'))),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.grey,
                endIndent: 0,
                indent: 0,
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: MySearchBar(
                        text: 'Search an Organization or Pet Enthusiast',
                      )),
                      SizedBox(width: 5),
                      SizedBox(
                        height: 50,
                        child: Icon(
                          Icons.menu_open_sharp,
                          size: 45,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hashTags.length,
                    itemBuilder: (context, index) {
                      final current = hashTags[index];
                      return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: PoppinsText(
                              text: current,
                              size: 16,
                              font: FontWeight.bold,
                              color: const Color(0xFF8A98E1)));
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const NFPost()
            ],
          ),
        )),
      ),
    );
  }

  final hashTags = ['Dogs', 'Cats', 'Birds', 'Rooster', 'Fish', 'Spiders'];
}
