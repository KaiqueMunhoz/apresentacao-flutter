import 'package:flutter/material.dart';
import 'package:todoey_presentation/widgets/texts/heading1.dart';

class NavBarWidget extends StatelessWidget {
  static const double space = 30.0;
  static const double iconAndCicleAvatarSize = 30.0;

  final List<String> tasks;

  const NavBarWidget({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60.0,
        right: space,
        bottom: space,
        left: space,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: iconAndCicleAvatarSize,
            child: Icon(
              Icons.list,
              size: iconAndCicleAvatarSize,
              color: Colors.lightBlue,
            ),
          ),
          const SizedBox(height: 10.0),
          const Heading1(),
          Text(
            '${tasks.length} tasks',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
