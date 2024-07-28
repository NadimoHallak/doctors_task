import 'package:doctors_task/view/widgets/auth_button.dart';
import 'package:doctors_task/view/widgets/lable_with_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  InputBorder? inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  );
  @override
  Widget build(BuildContext context) {
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
                    "Sign Up your account",
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
                    controller: usernameController,
                    inputBorder: inputBorder,
                    title: 'User Name',
                    hintText: "username",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  LableWithTextField(
                    controller: emailController,
                    inputBorder: inputBorder,
                    title: 'Email',
                    hintText: "email",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  LableWithTextField(
                    controller: passwordController,
                    inputBorder: inputBorder,
                    title: 'Password',
                    hintText: "passwor",
                    obscure: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  LableWithTextField(
                    controller: confirmPasswordController,
                    inputBorder: inputBorder,
                    title: 'Confirm your password',
                    hintText: "confirm password",
                    obscure: true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AuthButton(
                    onTap: () {},
                    text: "Sign Up",
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        semanticLabel: "Remember me",
                        value: false,
                        onChanged: (value) {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      Text(
                        "Remember me",
                        style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: const Color(0x993366CC),
                        ),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: const Color(0x993366CC),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
