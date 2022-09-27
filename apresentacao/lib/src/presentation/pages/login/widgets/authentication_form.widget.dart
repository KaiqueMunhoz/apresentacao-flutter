import 'package:flutter/material.dart';

class AuthenticationForm extends StatelessWidget {
  static const double _formHeight = 225.0;
  static const double _formWidth = 300.0;
  static const double _formBorder = 25.0;
  static const double _formPadding = 30.0;
  static const double _spaceBetweenTexts = 30.0;
  static const Color _textFormFieldColor = Color(0xFF5d8e9b);

  const AuthenticationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _formHeight,
      width: _formWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(_formBorder),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(_formPadding),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                cursorColor: _textFormFieldColor,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: _textFormFieldColor),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: _textFormFieldColor),
                  ),
                  labelText: 'Digite seu nome',
                  labelStyle: TextStyle(
                    color: _textFormFieldColor,
                  ),
                ),
              ),
              const SizedBox(height: _spaceBetweenTexts),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Digite sua senha',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
