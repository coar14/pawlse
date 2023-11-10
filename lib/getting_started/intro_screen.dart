import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              'Welcome To Pawlse',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            body:
                " Let's embark on a journey of love, laughter, and furry fun with Pawlse!",
            image: Image.asset(
              'assets/img/logo.png',
              height: 300,
              width: 300,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              '',
            ),
            body:
                " At Pawlse, we're all about connecting users with animal shelters. We believe in the power of collaboration to make a difference. Whether you're a pet owner or an animal lover, you can be a part of something bigger—changing lives, one paw at a time.",
            image: Image.asset(
              'assets/img/intro.png',
              height: 300,
              width: 300,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              '',
            ),
            body:
                "Pawlse is more than just a platform; it's a community of support. We're here to help one another navigate the joys and challenges of pet ownership. From pet care tips to sharing stories, we're in this together.",
            image: Image.asset(
              'assets/img/intro2.png',
              height: 300,
              width: 300,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              '',
            ),
            body:
                "Ready to embark on this exciting journey? Join our furry family today, where pets and owners thrive. Make a positive impact on the world of pets. Join us!",
            image: Image.asset(
              'assets/img/intro.png',
              height: 300,
              width: 300,
            ),
          ),
        ],
        onDone: () {
          _showBottomSheet(context);
        },
        onSkip: () {
          Navigator.pushNamed(context, "login");
        },
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.indigoAccent,
          )),
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.indigoAccent,
        ),
        done: Text(
          'Join Us',
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.indigoAccent,
          )),
        ),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            color: Colors.black26,
            activeColor: Colors.indigoAccent,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/org.png',
                width: 200,
              ),
              Image.asset('assets/img/petlover.png', width: 200),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Add your functionality for the button here
            },
            child: const Text('Join Us'),
          ),
        ],
      );
    },
  );
}
