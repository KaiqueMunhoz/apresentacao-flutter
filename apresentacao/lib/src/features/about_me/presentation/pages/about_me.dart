import 'package:apresentacao/src/features/about_me/presentation/widgets/experiences.dart';
import 'package:apresentacao/src/features/about_me/presentation/widgets/profile.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  static const Color _backgroundColor = Color(0xFF5d8e9b);

  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<Map<String, String>> experiences = [];
  List<Map<String, String>> allExperiences = [
    {'year': '2020/2023', 'company': 'Banco BV', 'tech': 'Flutter'},
    {'year': '2019', 'company': 'Oi', 'tech': 'React-Native | React | Node'},
    {'year': '2018', 'company': 'Banco Pan', 'tech': 'Android Nativo / Kotlin'},
  ];

  int currentExperience = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AboutMe._backgroundColor,
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
                Experiences(
                  listKey: listKey,
                  experiences: experiences,
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('arrow_forward'),
        onPressed: _addItem,
        child: const Icon(Icons.arrow_forward),
        backgroundColor: const Color(0xFF62B3AE),
      ),
    );
  }

  void _addItem() {
    if (currentExperience > 3) {
      return;
    }

    final int index = experiences.length;
    setState(() {
      experiences = allExperiences.sublist(0, currentExperience);
      currentExperience++;
    });
    listKey.currentState!.insertItem(index);
  }
}
