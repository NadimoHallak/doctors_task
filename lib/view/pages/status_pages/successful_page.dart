import 'package:doctors_task/view/pages/main_pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessfulPage extends StatelessWidget {
  const SuccessfulPage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    double pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: pageHeight / 4.5,
            left: pageWidth * 0.21,
            child: Container(
              width: 208,
              height: 208,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF8EDFEB),
              ),
              child: Center(
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/success.png"),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: pageWidth * 0.38,
            left: pageWidth * 0.33,
            child: Container(
              width: 15,
              height: 15,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(87, 142, 223, 235),
              ),
            ),
          ),
          Positioned(
            left: pageWidth * 0.20,
            top: pageWidth * 1.0,
            child: Container(
              width: 9,
              height: 15,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(139, 142, 223, 235),
              ),
            ),
          ),
          Positioned(
            left: pageWidth - (pageWidth * 0.20),
            top: pageHeight / 2,
            child: Container(
              width: 9,
              height: 15,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(139, 142, 223, 235),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Congrats!",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF5166BF),
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "$text\nSuccessfully",
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(123, 81, 101, 191),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                    child: Container(
                      width: 153,
                      height: 59,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFF5066C0),
                      ),
                      child: Center(
                        child: Text(
                          "Great!",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
