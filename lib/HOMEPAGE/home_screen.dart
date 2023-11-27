import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawlse/COMPONENTS/nf_post.dart';
import 'package:pawlse/COMPONENTS/pet_tags.dart';
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
        floatingActionButton: FloatingActionButton(
          elevation: 1,
          backgroundColor: Colors.redAccent,
          shape: const CircleBorder(
              side: BorderSide(width: 1, color: Colors.white)),
          onPressed: () {
            Navigator.pushNamed(context, 'create_post');
          },
          child: const Icon(
            Icons.create,
            size: 30,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'org_list');
                  },
                  icon: SvgPicture.asset(
                    'assets/img/organization.svg',
                    width: 35,
                  ))
            ],
            title: const PoppinsText(
                text: 'News Feed',
                size: 24,
                font: FontWeight.w600,
                color: Colors.black87)),
        body: const SingleChildScrollView(
            child: Column(
          children: [
            Divider(
              color: Colors.grey,
              endIndent: 0,
              indent: 0,
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: SizedBox(
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: MySearchBar(
                      hintText: 'Search an Organization or Pet Enthusiast',
                    )),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: PetTags()),
            SizedBox(height: 10),
            NFPost()
          ],
        )),
      ),
    );
  }
}
