import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawlse/THEMES/poppins.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final user = FirebaseAuth.instance.currentUser!;

  Future signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 30),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoppinsText(
                  text: 'Anne Junto',
                  size: 18,
                  font: FontWeight.w600,
                  color: Colors.black87),
              PoppinsText(
                  text: '@aneyaluv',
                  size: 16,
                  font: FontWeight.w500,
                  color: Colors.black87),
              SizedBox(height: 30)
            ],
          ),
          const Divider(
            thickness: 1.5,
            color: Color(0xFF8A98E1),
          ),
          const SizedBox(height: 20),
          const PoppinsText(
              text: 'Settings and Help',
              size: 16,
              font: FontWeight.w600,
              color: Colors.black87),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'edit_profile');
            },
            child: const ListTile(
              title: PoppinsText(
                  text: 'Edit Profile',
                  size: 16,
                  font: FontWeight.w500,
                  color: Colors.black87),
              leading: Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'subs');
            },
            child: const ListTile(
              title: PoppinsText(
                  text: 'Membership Subscription',
                  size: 16,
                  font: FontWeight.w500,
                  color: Colors.black87),
              leading: Icon(
                Icons.verified_rounded,
                size: 40,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'customer_support');
            },
            child: const ListTile(
              title: PoppinsText(
                  text: 'Customer Support',
                  size: 16,
                  font: FontWeight.w500,
                  color: Colors.black87),
              leading: Icon(
                Icons.support_agent_rounded,
                size: 40,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'faq');
            },
            child: const ListTile(
              title: PoppinsText(
                  text: 'FAQs',
                  size: 16,
                  font: FontWeight.w500,
                  color: Colors.black87),
              leading: Icon(
                Icons.question_answer_rounded,
                size: 40,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'terms');
            },
            child: ListTile(
              title: Text(
                'Terms and Conditions',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
              leading: const Icon(
                Icons.feed_rounded,
                size: 40,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'pawlse');
            },
            child: const ListTile(
              title: PoppinsText(
                  text: 'About Pawlse',
                  size: 16,
                  font: FontWeight.w500,
                  color: Colors.black87),
              leading: Icon(
                Icons.info,
                size: 40,
              ),
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog.adaptive(
                    actions: [
                      TextButton(
                          onPressed: () {
                            signOutUser();
                            Navigator.pushNamed(context, 'auth');
                          },
                          child: const PoppinsText(
                              text: 'Proceed',
                              size: 15,
                              font: FontWeight.w600,
                              color: Colors.blueGrey)),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const PoppinsText(
                              text: 'Cancel',
                              size: 15,
                              font: FontWeight.w600,
                              color: Colors.blueAccent))
                    ],
                    title: const PoppinsText(
                        text: 'Sign out',
                        size: 18,
                        font: FontWeight.w700,
                        color: Colors.black87),
                    content: const PoppinsText(
                        text: 'Are you sure you want to sign out?',
                        size: 14,
                        font: FontWeight.w500,
                        color: Colors.black87),
                  );
                },
              );
            },
            child: Container(
              height: 45,
              decoration: const BoxDecoration(
                  color: Color(0xFF8A98E1),
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              child: const Align(
                alignment: Alignment.center,
                child: PoppinsText(
                    text: 'Logout',
                    size: 16,
                    font: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
