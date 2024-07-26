import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    super.key,
    required this.phoneNumberController,
    required this.inputBorder,
    required this.hintText,
    this.obscure = false,
    this.keyboardType,
  });

  final TextEditingController phoneNumberController;
  final InputBorder? inputBorder;
  final String hintText;
  TextInputType? keyboardType;
  bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x593366CC),
            blurRadius: 20,
          ),
        ],
      ),
      child: TextFormField(
        validator: (value) {
          if (value!.trim().isEmpty) {
            return "the text box is empty";
          }
        },
        keyboardType: keyboardType,
        controller: phoneNumberController,
        obscureText: obscure,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: inputBorder,
          enabledBorder: inputBorder,
          hintText: hintText,
        ),
      ),
    );
  }
}
