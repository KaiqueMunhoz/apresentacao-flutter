import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  static const List<Map<String, String>> experiences = [
    {'year': '2020/2023', 'company': 'Banco BV', 'tech': 'Flutter'},
    {'year': '2019', 'company': 'Oi', 'tech': 'React-Native | React | Node'},
    {'year': '2018', 'company': 'Banco Pan', 'tech': 'Android Nativo / Kotlin'},
  ];

  Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: _listKey,
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
    );
  }
}
