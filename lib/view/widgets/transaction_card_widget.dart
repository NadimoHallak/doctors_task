import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionCardWidget extends StatelessWidget {
  const TransactionCardWidget({
    super.key,
    required this.image,
    required this.amount,
    required this.isIncomming,
    required this.firstName,
    required this.lastName,
    required this.dateTime,
  });
  final String image;
  final String amount;
  final bool isIncomming;
  final String firstName;
  final String lastName;
  final String dateTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      height: 198,
      width: 157,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [BoxShadow(blurRadius: 6, color: Colors.black12)],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    isIncomming
                        ? "assets/blue_chart.png"
                        : "assets/peruple_chart.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage(image),
                    ),
                    SizedBox(
                      height: 55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            isIncomming
                                ? Icons.south_west
                                : Icons.arrow_outward,
                            size: 25,
                            color: isIncomming
                                ? const Color(0xFF8EDFEB)
                                : const Color(0xFF5164BF),
                          ),
                          Text(
                            isIncomming ? "+ \$$amount" : "- \$$amount",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: isIncomming
                                  ? const Color(0xFF8EDFEB)
                                  : const Color(0xFF5164BF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "From",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF1E1E1E),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "$firstName\n$lastName",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF1E1E1E),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                dateTime,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF1E1E1E),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
