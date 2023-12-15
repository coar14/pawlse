import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/Authentication/auth_methods.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late bool showPass = true;
  late bool check = false;
  final TextEditingController _fname = TextEditingController();
  final TextEditingController _lname = TextEditingController();
  final TextEditingController _uname = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _email = TextEditingController();

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
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _fname,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: const BorderSide(width: 2),
                                ),
                                prefixIcon: const Icon(Icons.person),
                                labelText: 'First Name',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: _lname,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: const BorderSide(width: 2),
                                ),
                                prefixIcon: const Icon(Icons.person),
                                labelText: 'Last Name',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        controller: _email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(width: 2),
                          ),
                          prefixIcon: const Icon(Icons.person),
                          labelText: 'E-mail Address',
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        controller: _uname,
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
                        height: 24,
                      ),
                      TextFormField(
                        controller: _password,
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
                    onPressed: () async {
                      await AuthMethods().signUpUser(
                          firstname: _fname.text,
                          lastname: _lname.text,
                          email1: _email.text,
                          username: _uname.text,
                          password: _password.text);
                      Navigator.pushReplacementNamed(context, 'auth');
                    },
                    child: const Text('Create Account'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Divider(
                        color: Colors.grey,
                        thickness: .5,
                        indent: 60,
                        endIndent: 5,
                      ),
                    ),
                    Text(
                      'Or Sign up With',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                    Flexible(
                      child: Divider(
                        color: Colors.grey,
                        thickness: .5,
                        indent: 5,
                        endIndent: 60,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Image(
                              width: 30,
                              height: 30,
                              image: AssetImage('assets/icons/facebook.png'))),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Image(
                              width: 30,
                              height: 30,
                              image: AssetImage('assets/icons/google.png'))),
                    )
                  ],
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
}
