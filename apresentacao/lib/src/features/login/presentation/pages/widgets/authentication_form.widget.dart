import 'package:apresentacao/src/features/login/presentation/controllers/teddy_bear.controller.dart';
import 'package:apresentacao/src/features/login/presentation/pages/widgets/tracking_text_input.widget.dart';
import 'package:apresentacao/src/flutter_basics.routes.dart';
import 'package:flutter/material.dart';

class AuthenticationForm extends StatefulWidget {
  static const double _formHeight = 290.0;
  static const double _formWidth = 300.0;
  static const double _formBorder = 25.0;
  static const double _formPadding = 30.0;
  static const double _spaceBetweenWidgets = 30.0;

  static const String _labelYourName = 'Digite seu nome';
  static const String _hintName = 'Exemplo: Maria';
  static const String _labelYourPassword = 'Digite sua senha';
  static const String _hintPassword = 'É o tema de hoje';
  static const String _buttonText = 'COMEÇAR APRESENTAÇÃO';
  static const Color _buttonBackgroundColor = Color(0xFF5d8e9b);

  final TeddyBearController teddyBearController;

  const AuthenticationForm({
    Key? key,
    required this.teddyBearController,
  }) : super(key: key);

  @override
  State<AuthenticationForm> createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AuthenticationForm._formHeight,
      width: AuthenticationForm._formWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AuthenticationForm._formBorder),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AuthenticationForm._formPadding),
        child: Form(
          child: Column(
            children: <Widget>[
              TrackingTextInput(
                label: AuthenticationForm._labelYourName,
                hint: AuthenticationForm._hintName,
                onCaretMoved: (Offset caret) {
                  widget.teddyBearController.coverEyes(false);
                  widget.teddyBearController.lookAt(caret);
                },
              ),
              const SizedBox(height: AuthenticationForm._spaceBetweenWidgets),
              TrackingTextInput(
                label: AuthenticationForm._labelYourPassword,
                hint: AuthenticationForm._hintPassword,
                onCaretMoved: (Offset caret) {
                  widget.teddyBearController.coverEyes(true);
                  widget.teddyBearController.lookAt(caret);
                },
                onTextChanged: (String _password) {
                  setState(() {
                    password = _password;
                  });
                },
                isObscured: true,
              ),
              const SizedBox(height: AuthenticationForm._spaceBetweenWidgets),
              ElevatedButton(
                onPressed: _onButtonPressed,
                child: const Text(
                  AuthenticationForm._buttonText,
                ),
                style: ElevatedButton.styleFrom(
                  primary: AuthenticationForm._buttonBackgroundColor,
                  onPrimary: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onButtonPressed() async {
    final bool _isAValidPassword = _hasTheCorrectPassword();
    widget.teddyBearController.submitPassword(_isAValidPassword);
    if (_isAValidPassword) {
      await Future.delayed(const Duration(milliseconds: 500));
      Navigator.of(context).pushNamed(FlutterBasicsRoutesNames.aboutMe);
    }
  }

  bool _hasTheCorrectPassword() {
    return password.toLowerCase() == 'flutter';
  }
}
