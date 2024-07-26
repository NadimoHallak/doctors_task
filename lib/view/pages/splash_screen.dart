// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class SpashScreen extends StatelessWidget {
//   const SpashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color(0xFF4196E3),
//                 Color(0xFF373598),
//               ],
//             ),
//           ),
//           child: Stack(
//             children: [
//               Container(
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage("assets/Logo.png"),
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 300,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Lorem ipsum",
//                       style: GoogleFonts.poppins(
//                         color: Colors.white,
//                         fontSize: 29,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     Text(
//                       "Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt\nmollit anim id est laborum.",
//                       textAlign: TextAlign.center,
//                       style: GoogleFonts.poppins(
//                         color: Colors.white,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                     const SpashScreenButtonWidget(
//                       color: Color(0xFF1778F2),
//                       image: "assets/facebook_icon.png",
//                       textColor: Colors.white,
//                     ),
//                     const SpashScreenButtonWidget(
//                       color: Colors.white,
//                       image: "assets/google_icon.png",
//                       textColor: Color(0xFF676767),
//                     ),
//                     RichText(
//                       text: TextSpan(
//                         text: "Don't have an account? ",
//                         style: GoogleFonts.poppins(
//                           fontSize: 17,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.white,
//                         ),
//                         children: [
//                           TextSpan(
//                             text: "Sign Up",
//                             style: GoogleFonts.poppins(
//                               fontSize: 17,
//                               fontWeight: FontWeight.w600,
//                               // color: const Color(0x993366CC),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SpashScreenButtonWidget extends StatelessWidget {
//   const SpashScreenButtonWidget({
//     super.key,
//     required this.color,
//     required this.image,
//     required this.textColor,
//   });
//   final Color color;
//   final Color textColor;
//   final String image;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 289,
//       height: 53,
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.white),
//         borderRadius: BorderRadius.circular(100),
//         color: color,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Container(
//             width: 33.5,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 fit: BoxFit.cover,
//                 image: AssetImage(
//                   image,
//                 ),
//               ),
//             ),
//           ),
//           Text(
//             "Sign Up With Facebook",
//             style: GoogleFonts.poppins(
//               color: textColor,
//               fontSize: 18,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:animate_do/animate_do.dart';
import 'package:doctors_task/view/pages/auth/login_page.dart';
import 'package:doctors_task/view/widgets/splash_screen_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widthPage = MediaQuery.of(context).size.width;
    double heightPage = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF4196E3),
                Color(0xFF373598),
              ],
            ),
          ),
          child: Stack(
            children: [
              /// Animated Container with logo
              AnimatedLogo(
                heightPage: heightPage,
                widthPage: widthPage,
              ),

              const Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedBottomsContent()),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedLogo extends StatelessWidget {
  final double heightPage;
  final double widthPage;

  const AnimatedLogo({
    super.key,
    required this.heightPage,
    required this.widthPage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Image.asset("assets/Logo.png", width: 300),
    )
        .animate()
        .move(
          begin: const Offset(0, 0),
          end: Offset(0, heightPage / 3 + 30),
          curve: Curves.easeOutQuad,
          duration: 1000.ms,
        )
        // .move(
        //   delay: 1000.ms,
        //   begin: const Offset(0, 0),
        //   end: const Offset(0, -40),
        //   duration: 500.ms,
        //   curve: Curves.easeOutQuad,
        // )
        .move(
          delay: 1500.ms,
          begin: const Offset(0, 0),
          end: const Offset(0, -260),
          duration: 500.ms,
          curve: Curves.easeOutQuad,
        )
        .scaleXY(
          delay: 1500.ms,
          duration: 500.ms,
          begin: 1,
          end: 0.7,
        );
  }
}

class AnimatedBottomsContent extends StatelessWidget {
  const AnimatedBottomsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Lorem ipsum",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 29,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt\nmollit anim id est laborum.",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SplashScreenButtonWidget(
            color: Color(0xFF1778F2),
            image: "assets/facebook_icon.png",
            textColor: Colors.white,
          ),
          const SplashScreenButtonWidget(
            color: Colors.white,
            image: "assets/google_icon.png",
            textColor: Color(0xFF676767),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          GestureDetector(
            onDoubleTap: () {
              print("nadimo");
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            child: RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: "Signin",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ).animate().move(
          delay: 1500.ms,
          duration: 800.ms,
          begin: const Offset(0, 2000),
          end: const Offset(0, -100),
        );
  }
}
