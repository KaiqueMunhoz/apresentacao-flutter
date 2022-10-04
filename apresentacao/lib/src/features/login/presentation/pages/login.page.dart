import 'package:apresentacao/src/features/login/presentation/controllers/teddy_bear.controller.dart';
import 'package:apresentacao/src/features/login/presentation/pages/widgets/authentication_form.widget.dart';
import 'package:apresentacao/src/features/login/presentation/pages/widgets/teddy_bear.widget.dart';
import 'package:apresentacao/src/features/utils/get_padding_top.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TeddyBearController _teddyBearController = TeddyBearController();
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color _backgroundColor = Color(0xFF5d8e9b);
    const double _paddingHorizontal = 20.0;

    final double _paddingTop = getPaddingTop(context);

    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: _paddingHorizontal),
          child: Column(
            children: <Widget>[
              SizedBox(height: _paddingTop),
              TeddyBear(controller: _teddyBearController),
              AuthenticationForm(teddyBearController: _teddyBearController),
            ],
          ),
        ),
      ),
    );
  }
}
