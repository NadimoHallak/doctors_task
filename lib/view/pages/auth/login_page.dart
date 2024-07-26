import 'package:doctors_task/model/auth/login_mode.dart';
import 'package:doctors_task/view/pages/auth/otp_page.dart';
import 'package:doctors_task/view/pages/auth/sign_up_page.dart';
import 'package:doctors_task/view/pages/status_pages/field_page.dart';
import 'package:doctors_task/view/pages/status_pages/successful_page.dart';
import 'package:doctors_task/state_managment/auth_bloc/auth_bloc.dart';
import 'package:doctors_task/view/widgets/auth_button.dart';
import 'package:doctors_task/view/widgets/lable_with_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  InputBorder? inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide.none,
  );
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is SuccessLogin) {
            return OtpValidationPage();
          } else if (state is FieldLogin) {
            return const FieldPage();
          } else {
            return Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
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
                              "Log in to your account",
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
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
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
                              hintText: "Password",
                              obscure: true,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            AuthButton(
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                        LoginByEmail(
                                          loginModel: LoginModel(
                                            email: emailController.text,
                                            password: passwordController.text,
                                          ),
                                        ),
                                      );
                                }
                              },
                              text: "Log in",
                            ),
                            const SizedBox(
                              height: 40,
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
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Forget password?",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0x993366CC)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum.",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xFF1E1E1E)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (contex) => SignUpPage(),
                                  ),
                                );
                              },
                              child: RichText(
                                text: TextSpan(
                                  text: "Don't have an account? ",
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0x993366CC),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Sign Up",
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
                            SizedBox(
                              height: 15,
                            )
                          ],
                        ),
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
