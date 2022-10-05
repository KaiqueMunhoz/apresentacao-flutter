import 'package:apresentacao/src/features/utils/get_padding_top.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: _paddingTop,
                width: double.infinity,
              ),
              const CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xffFFFFFF),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
