import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                //header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                        height: 100, image: AssetImage('assets/img/logo.png')),
                    Text(
                      'Welcome,',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'I love you, thank you for using our app once again, Login now',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.headlineSmall,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2)),
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                            labelText: 'Username'),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2)),
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Remember Me',
                          style: Theme.of(context).textTheme.headlineSmall,
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: Theme.of(context).textTheme.headlineSmall,
                        )),
                  ],
                ),

                const SizedBox(height: 20),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Sign In'),
                    )),
                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Create Account'),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
