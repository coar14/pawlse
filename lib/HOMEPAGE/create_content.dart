import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/COMPONENTS/add_photos.dart';
import 'package:pawlse/COMPONENTS/create_textfield.dart';
import 'package:pawlse/COMPONENTS/pet_tags.dart';
import 'package:pawlse/HOMEPAGE/upload_post.dart';
import 'package:pawlse/THEMES/poppins.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  TextEditingController tags = TextEditingController();
  TextEditingController desc = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
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
            text: 'Create Content',
            size: 24,
            font: FontWeight.w600,
            color: Colors.black87),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const Divider(),
                const SizedBox(height: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: PoppinsText(
                          text: 'Choose Tag/s',
                          size: 16,
                          font: FontWeight.w500,
                          color: Colors.black87),
                    ),
                    PetTags(),
                  ],
                ),
                MyTextField(
                    textcontroller: tags,
                    text: 'Custom Tag/s',
                    lines: 1,
                    hintText: 'Type here...'),
                MyTextField(
                  textcontroller: desc,
                  text: 'Description',
                  lines: 1,
                  hintText: 'Type here...',
                ),
                const AddPhotos(),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ExpansionTile(
                    shape: Border.symmetric(horizontal: BorderSide.none),
                    leading: Icon(Icons.people_alt_rounded),
                    title: PoppinsText(
                        text: 'Audience',
                        size: 16,
                        font: FontWeight.w500,
                        color: Colors.black87),
                    children: [
                      ListTile(
                        leading: Icon(Icons.public),
                        subtitle: PoppinsText(
                            text: 'Anyone can see and comment on your post.',
                            size: 12,
                            font: FontWeight.w500,
                            color: Colors.black87),
                        title: PoppinsText(
                            text: 'Public',
                            size: 14,
                            font: FontWeight.w500,
                            color: Colors.black87),
                      ),
                      ListTile(
                        leading: Icon(Icons.people),
                        subtitle: PoppinsText(
                            text:
                                'Only the people who followed you can see and comment on this post.',
                            size: 12,
                            font: FontWeight.w500,
                            color: Colors.black87),
                        title: PoppinsText(
                            text: 'Followers',
                            size: 14,
                            font: FontWeight.w500,
                            color: Colors.black87),
                      ),
                      ListTile(
                        leading: Icon(Icons.lock),
                        subtitle: PoppinsText(
                            text: 'Only you can see this post.',
                            size: 12,
                            font: FontWeight.w500,
                            color: Colors.black87),
                        title: PoppinsText(
                            text: 'Only me',
                            size: 14,
                            font: FontWeight.w500,
                            color: Colors.black87),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: GestureDetector(
                    onTap: () async {
                      // Assuming FirestoreMethods().uploadPost returns a Future
                      await FirestoreMethods().uploadPost(
                          desc.text, _auth.currentUser!.uid, tags.text);

                      // Display a snackbar
                      const snackBar = SnackBar(
                        content: Text('Successfully Posted!'),
                        duration: Duration(seconds: 2),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width * .5,
                      height: 45,
                      child: const Align(
                        alignment: Alignment.center,
                        child: PoppinsText(
                          text: 'Create Post',
                          size: 16,
                          font: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
