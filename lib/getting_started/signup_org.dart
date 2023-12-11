import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pawlse/THEMES/poppins.dart';

class SignUpOrg extends StatefulWidget {
  const SignUpOrg({super.key});

  @override
  State<SignUpOrg> createState() => _SignUpOrgState();
}

class _SignUpOrgState extends State<SignUpOrg> {
  File? _selectedImage;
  late bool showPass = true;
  late bool check = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Pawlse',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text("Let's create your account.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(width: 2),
                          ),
                          prefixIcon: const Icon(Iconsax.building),
                          labelText: 'Organization Name',
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(width: 2),
                          ),
                          prefixIcon: const Icon(Icons.email_outlined),
                          labelText: 'E-mail Address',
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(width: 2),
                          ),
                          prefixIcon: const Icon(Icons.numbers),
                          labelText: 'Contact Number',
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(width: 2),
                          ),
                          prefixIcon: const Icon(Iconsax.location),
                          labelText: 'Address/Location',
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(width: 2),
                          ),
                          prefixIcon: const Icon(Icons.person),
                          labelText: 'Username',
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        obscureText: showPass,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(width: 2),
                          ),
                          prefixIcon: const Icon(Icons.lock),
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: const Icon(Iconsax.eye_slash),
                            onPressed: () {
                              setState(() {
                                showPass = !showPass;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: check,
                      onChanged: (value) {
                        setState(() {
                          check = !check;
                        });
                      },
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          text:
                              'By checking this, you have read and agreed to the ',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
                          children: const [
                            TextSpan(
                              text: 'terms and conditions',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                              text: ' of the app.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //upload
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    _pickImageFromGallery();
                  },
                  child: Flexible(
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text:
                            "Kindly upload the one of the following documents:     (1) the organization's head Valid ID, (2) Business Permit, and (3) Police Clearance. ",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black)),
                        children: [
                          TextSpan(
                              text: 'Click here',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blue))),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                _selectedImage != null
                    ? Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 50,
                          child: Image.file(_selectedImage!, fit: BoxFit.cover),
                        ),
                      )
                    : Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Please upload an image',
                          style: Theme.of(context).textTheme.headlineSmall,
                        )),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.purple[400],
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        textStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog.adaptive(
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'auth');
                                    },
                                    child: const PoppinsText(
                                        text: 'Ok',
                                        size: 15,
                                        font: FontWeight.w600,
                                        color: Colors.blueGrey)),
                              ],
                              title: const PoppinsText(
                                  text: 'Verification Process',
                                  size: 18,
                                  font: FontWeight.w700,
                                  color: Colors.black87),
                              content: Text(
                                'The Pawlse Support team will review your submitted documents and will send you an email for further details.',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ));
                        },
                      );
                    },
                    child: const Text('Submit Application'),
                  ),
                ),

                // const SizedBox(
                //   height: 35,
                // ),
                // Align(
                //   alignment: Alignment.center,
                //   child: GestureDetector(
                //     onTap: () {
                //       Navigator.pushReplacementNamed(context, 'auth');
                //     },
                //     child: RichText(
                //       text: TextSpan(
                //         text: 'Already have an account? ',
                //         style: Theme.of(context).textTheme.headlineSmall,
                //         children: const [
                //           TextSpan(
                //             text: 'Sign in',
                //             style: TextStyle(
                //               color: Colors.blue,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage.path);
    });
  }
}
