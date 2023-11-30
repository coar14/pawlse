import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/COMPONENTS/terms_tile.dart';
import 'package:pawlse/THEMES/poppins.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

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
            text: 'FAQs',
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: PoppinsText(
                    text: 'Frequently Asked Questions',
                    size: 16,
                    font: FontWeight.w600,
                    color: Colors.black87),
              ),
              TermsTile(text: '1. What is Pawlse, and who is it for?'),
              TermsTile(text: '2. How do I create an account on Pawlse?'),
              TermsTile(text: '3. Can I showcase my pets on Pawlse?'),
              TermsTile(
                  text: '4. How can I connect with other pet enthusiast?'),
              TermsTile(
                  text:
                      '5. Is Pawlse only for individual pet owners or can organizations join too?'),
              TermsTile(
                  text:
                      '6. How can I discover pet-related events and activities in my area?'),
              TermsTile(
                  text:
                      '7. Are there any safety measures in place for pet-related transactions or adoptions?'),
              TermsTile(
                  text:
                      '8. Can I use Pawlse to promote pet adoption or fundraising events?'),
              TermsTile(
                  text:
                      '9. How can I support Pawlse and other pet-related organizations?'),
              TermsTile(
                  text:
                      '10. How can I provide feedback or suggest new features for Pawlse?'),
            ],
          ),
        ),
      )),
    );
  }
}
