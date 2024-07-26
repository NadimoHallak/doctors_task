// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctors_task/model/transaction_info.dart';
import 'package:doctors_task/view/widgets/transaction_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:doctors_task/model/payment_info.dart';
import 'package:doctors_task/view/widgets/pament_card_widget.dart';
import 'package:doctors_task/view/widgets/section_title_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<PaymentInfo> pamentCards = [
    PaymentInfo(
      image: "assets/visa_logo.png",
      pamentName: "VISA",
      pamentCalss: "Master Card",
      pamentCardNumber: "6253",
      balance: "\$758964.10",
    ),
    PaymentInfo(
      image: "assets/visa_logo.png",
      pamentName: "VISA",
      pamentCalss: "Master Card",
      pamentCardNumber: "6253",
      balance: "\$758964.10",
    ),
    PaymentInfo(
      image: "assets/visa_logo.png",
      pamentName: "VISA",
      pamentCalss: "Master Card",
      pamentCardNumber: "6253",
      balance: "\$758964.10",
    ),
  ];

  List<TransactionInfo> incommingTransactions = [
    TransactionInfo(
      image: 'assets/image_profile.png',
      isIncomming: true,
      amount: "62.54",
      dateTime: "23 December 2020",
      firstName: "Johnny",
      lastName: "Bairstow",
    ),
    TransactionInfo(
      image: 'assets/image_profile.png',
      isIncomming: true,
      amount: "62.54",
      dateTime: "23 December 2020",
      firstName: "Johnny",
      lastName: "Bairstow",
    ),
    TransactionInfo(
      image: 'assets/image_profile.png',
      isIncomming: true,
      amount: "62.54",
      dateTime: "23 December 2020",
      firstName: "Johnny",
      lastName: "Bairstow",
    ),
  ];
  List<TransactionInfo> outgoingTransactions = [
    TransactionInfo(
      image: 'assets/image_profile.png',
      isIncomming: false,
      amount: "62.54",
      dateTime: "23 December 2020",
      firstName: "Johnny",
      lastName: "Bairstow",
    ),
    TransactionInfo(
      image: 'assets/image_profile.png',
      isIncomming: false,
      amount: "62.54",
      dateTime: "23 December 2020",
      firstName: "Johnny",
      lastName: "Bairstow",
    ),
    TransactionInfo(
      image: 'assets/image_profile.png',
      isIncomming: false,
      amount: "62.54",
      dateTime: "23 December 2020",
      firstName: "Johnny",
      lastName: "Bairstow",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Badge(
              child: Icon(
                Icons.notifications_none_outlined,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 20),
                child: Text(
                  "Current Balance",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF878787)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 15),
                child: Text(
                  "\$2,85,856.20",
                  style: GoogleFonts.poppins(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF5163BF)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(pamentCards.length, (index) {
                      PaymentInfo item = pamentCards[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: PaymentCardWidget(
                          image: item.image,
                          pamentName: item.pamentName,
                          pamentCalss: item.pamentCalss,
                          pamentCardNumber: item.pamentCardNumber,
                          balance: item.balance,
                        ),
                      );
                    }),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SectionTitleWidget(
                title: "Incoming Transactions",
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    incommingTransactions.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TransactionCardWidget(
                        image: incommingTransactions[index].image,
                        isIncomming: incommingTransactions[index].isIncomming,
                        amount: incommingTransactions[index].amount,
                        dateTime: incommingTransactions[index].dateTime,
                        firstName: incommingTransactions[index].firstName,
                        lastName: incommingTransactions[index].lastName,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SectionTitleWidget(
                title: "Outgoing Transactions",
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    outgoingTransactions.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TransactionCardWidget(
                        image: outgoingTransactions[index].image,
                        isIncomming: outgoingTransactions[index].isIncomming,
                        amount: outgoingTransactions[index].amount,
                        dateTime: outgoingTransactions[index].dateTime,
                        firstName: outgoingTransactions[index].firstName,
                        lastName: outgoingTransactions[index].lastName,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
