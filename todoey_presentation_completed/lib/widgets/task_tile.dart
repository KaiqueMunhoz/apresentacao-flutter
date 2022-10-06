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
  bool _isCheckboxChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle,
        style: TextStyle(
          decoration: _isCheckboxChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: _isCheckboxChecked,
        onChanged: (value) {
          setState(() {
            _isCheckboxChecked = value;
          });
        },
      ),
    );
  }
}
