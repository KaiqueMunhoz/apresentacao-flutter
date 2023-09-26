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
            Container(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  key: const Key('arrow_back'),
                  onPressed: () {},
                  child: const Icon(Icons.arrow_back),
                  heroTag: null,
                ),
                FloatingActionButton(
                  key: const Key('arrow_forward'),
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward),
                  heroTag: null,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
