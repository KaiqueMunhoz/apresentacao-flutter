import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String taskTitle;

  TaskTile({
    this.taskTitle,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool _onCheckboxChanged = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle,
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: _onCheckboxChanged,
        onChanged: (_) {},
      ),
    );
  }
}
