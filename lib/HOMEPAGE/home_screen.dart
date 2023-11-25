import 'package:flutter/material.dart';
import 'package:pawlse/COMPONENTS/drawer.dart';
import 'package:pawlse/COMPONENTS/nf_post.dart';
import 'package:pawlse/COMPONENTS/search_bar.dart';
import 'package:pawlse/THEMES/poppins.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const PoppinsText(
                text: 'News Feed',
                size: 24,
                font: FontWeight.bold,
                color: Colors.black87)),
        endDrawer: const MyDrawer(),
        body: SingleChildScrollView(
            child: Column(
          children: [
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
        )),
      ),
    );
  }

  final hashTags = ['Dogs', 'Cats', 'Birds', 'Rooster', 'Fish', 'Spiders'];
}
