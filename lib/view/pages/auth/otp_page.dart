import 'package:doctors_task/model/auth/login_mode.dart';
import 'package:doctors_task/view/pages/auth/sign_up_page.dart';
import 'package:doctors_task/view/pages/status_pages/field_page.dart';
import 'package:doctors_task/view/pages/status_pages/successful_page.dart';
import 'package:doctors_task/state_managment/auth_bloc/auth_bloc.dart';
import 'package:doctors_task/view/widgets/auth_button.dart';
import 'package:doctors_task/view/widgets/lable_with_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpValidationPage extends StatelessWidget {
  OtpValidationPage({super.key});
  TextEditingController otpController = TextEditingController();
  InputBorder? inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  );
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is SuccessVlidateUser) {
            return const SuccessfulPage(text: "Vlaidation");
          } else if (state is CodeMismatch) {
            return const FieldPage();
            // return Scaffold(
            //   body: Center(
            //     child: Text(
            //       "Code Mismatch",
            //       style: GoogleFonts.poppins(
            //         color: Colors.red,
            //       ),
            //     ),
            //   ),
            // );
          } else if (state is FieldMismatch) {
            return const FieldPage();
            // return Scaffold(
            //   body: Center(
            //     child: Text(
            //       "Field Mismatch",
            //       style: GoogleFonts.poppins(
            //         color: Colors.red,
            //       ),
            //     ),
            //   ),
            // );
          } else {
            return Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          Text(
                            "Valedate Your account",
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF3366CC),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          LableWithTextField(
                            controller: otpController,
                            inputBorder: inputBorder,
                            title: 'code :',
                            hintText: "X X X X X X",
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          AuthButton(
                            onTap: () {
                              print("object");
                              context.read<AuthBloc>().add(
                                    ValidateOtpCode(code: otpController.text),
                                  );
                            },
                            text: "valedate",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
