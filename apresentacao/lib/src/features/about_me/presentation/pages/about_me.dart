import 'package:apresentacao/src/features/about_me/presentation/widgets/profile.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  static const Color _backgroundColor = Color(0xFF5d8e9b);
  static const List<Map<String, String>> experiences = [
    {'year': '2020/2023', 'company': 'Banco BV', 'tech': 'Flutter'},
    {'year': '2019', 'company': 'Oi', 'tech': 'React-Native | React | Node'},
    {'year': '2018', 'company': 'Banco Pan', 'tech': 'Android Nativo / Kotlin'},
  ];

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
                AnimatedList(
                  shrinkWrap: true,
                  initialItemCount: experiences.length,
                  itemBuilder: (context, index, animation) {
                    return ListTile(
                      title: Text(
                        '${experiences[index]['year']} - ${experiences[index]['company']}',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        '${experiences[index]['tech']}',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
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
