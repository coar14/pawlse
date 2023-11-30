import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/COMPONENTS/create_textfield.dart';
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
              const SizedBox(height: 20),
              Card(
                color: Colors.white,
                elevation: 4,
                shape: const CircleBorder(),
                child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      'assets/img/upload.png',
                    )),
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  PoppinsText(
                      text: 'Anne Junto',
                      size: 16,
                      font: FontWeight.w500,
                      color: Color(0xFF8A98E1)),
                  PoppinsText(
                      text: '@aneyaluv',
                      size: 14,
                      font: FontWeight.w500,
                      color: Color(0xFF8A98E1))
                ],
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    MyTextField(
                        text: 'Modify Name',
                        lines: 1,
                        hintText: 'Type here...'),
                    MyTextField(
                        text: 'Pet Owner Title',
                        lines: 1,
                        hintText: 'Type here...'),
                    MyTextField(
                        text: 'Modify Bio', lines: 1, hintText: 'Type here...'),
                    MyTextField(
                        text: 'Link external accounts',
                        lines: 1,
                        hintText: 'Type here...'),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .05),
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
              SizedBox(height: MediaQuery.of(context).size.height * .05),
            ],
          )
        ],
      ),
    );
  }
}
