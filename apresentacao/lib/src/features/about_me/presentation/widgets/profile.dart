import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(
          radius: 52,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              'assets/images/kaique_munhoz_profile.jpeg',
            ),
          ),
        ),
        SizedBox(width: 16),
        Text(
          'Kaique Munhoz',
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
