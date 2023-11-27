import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/COMPONENTS/terms_tile.dart';
import 'package:pawlse/THEMES/poppins.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

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
            text: 'Terms and Conditions',
            size: 20,
            font: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 0.867)),
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoppinsText(
                  text: 'Last Updated: September 31, 2023',
                  size: 16,
                  font: FontWeight.w600,
                  color: Colors.black87),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: PoppinsText(
                    text:
                        'These terms and conditions ("Terms") govern your use of Pawlse ("the Application"), provided by Pawlse Corporation ("we," "us," or "our"). By using the Application, you agree to comply with and be bound by these Terms. If you do not agree to these Terms, please do not use the Application.',
                    size: 14,
                    font: FontWeight.w500,
                    color: Colors.black87),
              ),
              TermsTile(text: '1. User Eligibility'),
              TermsTile(text: '2. License to Use'),
              TermsTile(text: '3. User Content'),
              TermsTile(text: '4. Privacy'),
              TermsTile(text: '5. Prohibited Conduct'),
              TermsTile(text: '6. Termination'),
              TermsTile(text: '7. Disclaimer of Warranties'),
              TermsTile(text: '8. Limitation of Liability'),
              TermsTile(text: '9. Changes to Terms'),
              TermsTile(text: '10. Governing Law'),
            ],
          ),
        ),
      )),
    );
  }
}
