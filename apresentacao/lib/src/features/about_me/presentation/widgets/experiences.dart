import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  final GlobalKey<AnimatedListState> listKey;

  static const List<Map<String, String>> experiences = [
    {'year': '2020/2023', 'company': 'Banco BV', 'tech': 'Flutter'},
    {'year': '2019', 'company': 'Oi', 'tech': 'React-Native | React | Node'},
    {'year': '2018', 'company': 'Banco Pan', 'tech': 'Android Nativo / Kotlin'},
  ];

  Experiences({
    Key? key,
    required this.listKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: listKey,
      shrinkWrap: true,
      initialItemCount: experiences.length,
      itemBuilder: (context, index, animation) {
        return SlideTransition(
          position: animation.drive(Tween<Offset>(
            begin: const Offset(1, 0),
            end: const Offset(0, 0),
          )),
          child: ListTile(
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
          ),
        );
      },
    );
  }
}
