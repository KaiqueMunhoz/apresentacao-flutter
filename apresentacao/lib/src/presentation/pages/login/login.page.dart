import 'package:apresentacao/src/presentation/pages/login/widgets/teddy_bear.widget.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    const Color _backgroundColor = Color(0xFF5d8e9b);
    const double _paddingHorizontal = 20.0;

    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: _paddingHorizontal,
          right: _paddingHorizontal,
          top: devicePadding.top + 50.0,
        ),
        child: Column(
          children: [
            const TeddyBear(),
            Container(
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
