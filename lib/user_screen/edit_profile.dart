import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/THEMES/poppins.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
        title: const PoppinsText(
            text: 'Edit Profile',
            size: 20,
            font: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 0.867)),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              const SizedBox(height: 40),
              Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    'assets/img/upload.png',
                  )),
              const SizedBox(height: 25),
              const Column(
                children: [
                  PoppinsText(
                      text: 'Anne Junto',
                      size: 15,
                      font: FontWeight.w500,
                      color: Color(0xFF8A98E1)),
                  PoppinsText(
                      text: '@aneyaluv',
                      size: 13,
                      font: FontWeight.w500,
                      color: Color(0xFF8A98E1))
                ],
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.edit,
                          size: 30,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF8A98E1), width: 1)),
                        border: UnderlineInputBorder(),
                        hintText: 'Modify Name',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.edit,
                          size: 30,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF8A98E1), width: 1)),
                        border: UnderlineInputBorder(),
                        hintText: 'Pet Owner Title',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.edit,
                          size: 30,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF8A98E1), width: 1)),
                        border: UnderlineInputBorder(),
                        hintText: 'Modify Bio',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.edit,
                          size: 30,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF8A98E1), width: 1)),
                        border: UnderlineInputBorder(),
                        hintText: 'Link external accounts',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .10),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * .50,
                decoration: const BoxDecoration(
                    color: Color(0xFF8A98E1),
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                child: const Align(
                  alignment: Alignment.center,
                  child: PoppinsText(
                      text: 'Save Changes',
                      size: 16,
                      font: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
