import 'package:doctors_task/view/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LableWithTextField extends StatelessWidget {
  LableWithTextField({
    super.key,
    required this.controller,
    required this.inputBorder,
    required this.title,
    required this.hintText,
    this.obscure = false,
    this.keyboardType,
  });

  final TextEditingController controller;
  final InputBorder? inputBorder;
  final String title;
  final String hintText;
  TextInputType? keyboardType;
  bool obscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: const Color(0xFF1E1E1E),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFieldWidget(
          phoneNumberController: controller,
          keyboardType: keyboardType,
          inputBorder: inputBorder,
          hintText: hintText,
          obscure: obscure,
        ),
      ],
    );
  }
}
