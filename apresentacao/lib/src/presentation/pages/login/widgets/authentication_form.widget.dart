import 'package:apresentacao/src/presentation/pages/login/widgets/tracking_text_input.widget.dart';
import 'package:flutter/material.dart';

class AuthenticationForm extends StatelessWidget {
  static const double _formHeight = 225.0;
  static const double _formWidth = 300.0;
  static const double _formBorder = 25.0;
  static const double _formPadding = 30.0;
  static const double _spaceBetweenTexts = 30.0;

  static const String _labelYourName = 'Digite seu nome';
  static const String _hintName = 'Exemplo: Maria';
  static const String _labelYourPassword = 'Digite sua senha';
  static const String _hintPassword = 'É uma comunidade';

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
            children: const <Widget>[
              TrackingTextInput(
                label: _labelYourName,
                hint: _hintName,
              ),
              SizedBox(height: _spaceBetweenTexts),
              TrackingTextInput(
                label: _labelYourPassword,
                hint: _hintPassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
