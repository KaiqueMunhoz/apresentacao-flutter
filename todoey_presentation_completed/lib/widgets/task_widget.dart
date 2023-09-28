import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  final String title;

  const TaskWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListTile(
        title: Text(
          widget.title,
          style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: (hasBeenChecked) {
            setState(() {
              isChecked = hasBeenChecked ?? false;
            });
          },
        ),
      ),
    );
  }
}
