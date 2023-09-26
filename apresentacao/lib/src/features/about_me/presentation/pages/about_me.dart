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
  List<Map<String, String>> experiences = [
    {'year': '2020/2023', 'company': 'Banco BV', 'tech': 'Flutter'},
    {'year': '2019', 'company': 'Oi', 'tech': 'React-Native | React | Node'},
    {'year': '2018', 'company': 'Banco Pan', 'tech': 'Android Nativo / Kotlin'},
  ];

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
                  onPressed: _addItem,
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

  void _addItem() {
    final int index = experiences.length;
    setState(() {
      experiences.add({
        'year': '2023',
        'company': 'Nova Empresa',
        'tech': 'Tecnologia Nova'
      });
    });
    listKey.currentState!.insertItem(index);
  }
}
