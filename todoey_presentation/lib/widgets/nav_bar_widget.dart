import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
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
        right: 30.0,
        bottom: 30.0,
        left: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(
              Icons.list,
              size: 30.0,
              color: Colors.lightBlue,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Todoey',
            style: TextStyle(
              color: Colors.white,
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
            ),
          ),
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
