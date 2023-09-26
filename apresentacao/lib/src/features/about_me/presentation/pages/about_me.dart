import 'package:apresentacao/src/features/about_me/presentation/widgets/experiences.dart';
import 'package:apresentacao/src/features/about_me/presentation/widgets/profile.dart';
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
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 100.0),
                const Profile(),
                Experiences(),
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
