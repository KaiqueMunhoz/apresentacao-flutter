import 'package:flutter/material.dart';

class AuthenticationForm extends StatelessWidget {
  static const double _formWidth = 300.0;
  static const double _formBorder = 25.0;
  static const double _formPadding = 30.0;

  const AuthenticationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _formWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(_formBorder),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(_formPadding),
      ),
    );
  }
}
