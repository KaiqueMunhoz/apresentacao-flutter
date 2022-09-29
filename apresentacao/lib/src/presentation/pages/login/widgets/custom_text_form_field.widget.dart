import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  static const Color _textFormFieldColor = Color(0xFF5d8e9b);
  final String labelText;
  final TextEditingController? controller;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: _textFormFieldColor,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: _textFormFieldColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: _textFormFieldColor),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: _textFormFieldColor,
        ),
      ),
    );
  }
}
