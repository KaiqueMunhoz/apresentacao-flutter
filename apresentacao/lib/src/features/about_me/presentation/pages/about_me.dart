import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  static const Color _backgroundColor = Color(0xFF5d8e9b);

  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 100.0),
                Row(
                  children: const [
                    CircleAvatar(
                      minRadius: 50,
                      backgroundImage: AssetImage(
                        'assets/images/kaique_munhoz_profile.jpeg',
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
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  key: const Key('arrow_back'),
                  onPressed: () {},
                  child: const Icon(Icons.arrow_back),
                  heroTag: null,
                  backgroundColor: const Color(0xFF62B3AE),
                ),
                FloatingActionButton(
                  key: const Key('arrow_forward'),
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward),
                  heroTag: null,
                  backgroundColor: const Color(0xFF62B3AE),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
