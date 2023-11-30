import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/COMPONENTS/plan_button.dart';
import 'package:pawlse/THEMES/poppins.dart';

class planOptions {
  final plans = [
    [
      'Yearly',
      '1',
      'Best Plan',
      'PHP 999.00',
      '/Yearly',
      'Save PHP 197',
      'Boosted Post',
      'Ad-free',
      '15% off partnered stores'
    ],
    [
      '3 Months',
      '1',
      'Popular',
      'PHP 299.00',
      '/Quarter',
      'Save PHP 148',
      'Boosted Post',
      'Ad-free',
      '10% off partnered stores'
    ],
    [
      '1 Month',
      '0',
      'Popular',
      'PHP 149.00',
      '/Monthly',
      'Boosted Post',
      'Ad-free',
      '',
      ''
    ],
  ];
}

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  bool tap = false;
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
            text: 'Subscription',
            size: 20,
            font: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 0.867)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: planOptions().plans.length,
                  itemBuilder: (context, index) {
                    final current = planOptions().plans[index];
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        margin: const EdgeInsets.only(right: 24),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(2, 2),
                                blurRadius: 4,
                                spreadRadius: 1,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(18),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF8A98E1),
                                  Color(0xFFD7DCFF)
                                ])),
                        height: MediaQuery.of(context).size.height * .45,
                        width: MediaQuery.of(context).size.width * .70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                PoppinsText(
                                    text: current[0],
                                    size: 28,
                                    font: FontWeight.w600,
                                    color: Colors.white),
                                const SizedBox(width: 20),
                                current[1] == '1'
                                    ? Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white,
                                        ),
                                        height: 30,
                                        child: PoppinsText(
                                            text: current[2],
                                            size: 12,
                                            font: FontWeight.w500,
                                            color: Colors.black87),
                                      )
                                    : const SizedBox(
                                        height: 30,
                                        child: Text(''),
                                      )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    current[3],
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Text(
                                    current[4],
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PoppinsText(
                                    text: current[5],
                                    size: 16,
                                    font: FontWeight.w500,
                                    color: Colors.white),
                                PoppinsText(
                                    text: current[6],
                                    size: 16,
                                    font: FontWeight.w500,
                                    color: Colors.white),
                                PoppinsText(
                                    text: current[7],
                                    size: 16,
                                    font: FontWeight.w500,
                                    color: Colors.white),
                                PoppinsText(
                                    text: current[8],
                                    size: 16,
                                    font: FontWeight.w500,
                                    color: Colors.white),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  tap = !tap;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 20),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: const Color(0xFF8A98E1),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: PoppinsText(
                                      text: 'Select',
                                      size: 20,
                                      font: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              tap == true
                  ? Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PoppinsText(
                                        text: 'E-Wallet',
                                        size: 22,
                                        font: FontWeight.w600,
                                        color: Colors.black87),
                                    PlanButton(text: 'G-Cash'),
                                    PlanButton(text: 'PayMaya'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PoppinsText(
                                        text: 'Bank',
                                        size: 22,
                                        font: FontWeight.w600,
                                        color: Colors.black87),
                                    PlanButton(text: 'BPI'),
                                    PlanButton(text: 'Metrobank'),
                                    PlanButton(text: 'BDO'),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.redAccent,
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: PoppinsText(
                                  text: 'Subscribe',
                                  size: 20,
                                  font: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )
                  : const SizedBox(
                      height: 20,
                    ),
            ],
          ),
        ),
      )),
    );
  }
}
