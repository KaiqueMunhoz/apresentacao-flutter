import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;

  TaskTile({
    this.taskTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: false,
        onChanged: (_) {},
      ),
    );
  }
}
