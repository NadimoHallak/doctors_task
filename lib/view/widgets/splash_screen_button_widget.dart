
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenButtonWidget extends StatelessWidget {
  const SplashScreenButtonWidget({
    super.key,
    required this.color,
    required this.image,
    required this.textColor,
  });
  final Color color;
  final Color textColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 289,
      height: 53,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 33.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          Text(
            "Sign Up With Facebook",
            style: GoogleFonts.poppins(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
