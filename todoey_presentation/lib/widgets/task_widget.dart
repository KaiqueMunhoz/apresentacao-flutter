import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String title;

  const TaskWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListTile(
        title: Text(title),
        trailing: Checkbox(
          value: false,
          onChanged: (_) {},
        ),
      ),
    );
  }
}
