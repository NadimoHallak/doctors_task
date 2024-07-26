import 'dart:math';

import 'package:doctors_task/view/pages/auth/login_page.dart';
import 'package:doctors_task/view/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldPage extends StatelessWidget {
  const FieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    double pageheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF47606C),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -100,
              right: -160,
              child: Container(
                width: 363,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xFF577482),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: -40,
              left: -250,
              child: Container(
                width: 363,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xFF577482),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: -90,
              left: -150,
              child: Container(
                width: 363,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xFF577482),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: pageWidth,
              left: 270,
              child: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: Color(0xFF577482),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: pageWidth / 4,
              left: pageWidth / 4,
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(pi / 2),
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: Color(0xFF577482),
                  ),
                ),
              ),
            ),
            Positioned(
              left: pageWidth / 7,
              top: pageheight / 7,
              child: Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/error.png"),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 350,
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Oops!",
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Something went wrong!",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SplashScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 287,
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF05375A),
                              Color(0xFF00192B),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Something went wrong!",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
