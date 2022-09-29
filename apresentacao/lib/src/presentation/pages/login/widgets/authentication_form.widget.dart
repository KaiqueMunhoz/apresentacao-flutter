import 'package:apresentacao/src/presentation/controllers/login/teddy_bear.controller.dart';
import 'package:apresentacao/src/presentation/pages/login/widgets/tracking_text_input.widget.dart';
import 'package:flutter/material.dart';

class AuthenticationForm extends StatelessWidget {
  static const double _formHeight = 225.0;
  static const double _formWidth = 300.0;
  static const double _formBorder = 25.0;
  static const double _formPadding = 30.0;
  static const double _spaceBetweenWidgets = 30.0;

  static const String _labelYourName = 'Digite seu nome';
  static const String _hintName = 'Exemplo: Maria';
  static const String _labelYourPassword = 'Digite sua senha';
  static const String _hintPassword = 'É uma comunidade';

  final TeddyBearController teddyBearController;

  const AuthenticationForm({
    Key? key,
    required this.teddyBearController,
  }) : super(key: key);

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
              TrackingTextInput(
                label: _labelYourName,
                hint: _hintName,
                onCaretMoved: (Offset caret) {
                  teddyBearController.coverEyes(false);
                  teddyBearController.lookAt(caret);
                },
              ),
              const SizedBox(height: _spaceBetweenWidgets),
              TrackingTextInput(
                label: _labelYourPassword,
                hint: _hintPassword,
                onCaretMoved: (Offset caret) {
                  teddyBearController.coverEyes(true);
                  teddyBearController.lookAt(caret);
                },
                isObscured: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
