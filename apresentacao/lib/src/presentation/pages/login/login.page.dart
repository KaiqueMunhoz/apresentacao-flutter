import 'package:apresentacao/src/presentation/controllers/login/teddy_bear.controller.dart';
import 'package:apresentacao/src/presentation/pages/login/widgets/authentication_form.widget.dart';
import 'package:apresentacao/src/presentation/pages/login/widgets/teddy_bear.widget.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TeddyBearController _teddyBearController = TeddyBearController();
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color _backgroundColor = Color(0xFF5d8e9b);
    const double _paddingHorizontal = 20.0;

    final double _paddingTop = _getPaddingTop(context);

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

  double _getPaddingTop(BuildContext context) {
    EdgeInsets _devicePadding = MediaQuery.of(context).padding;
    const double _appBarHeight = 50.0;

    return _devicePadding.top + _appBarHeight;
  }
}
