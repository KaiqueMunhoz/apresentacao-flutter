import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListTile(
        title: Text('Texto'),
        trailing: Checkbox(
          value: false,
          onChanged: (_) {},
        ),
      ),
    );
  }
}
