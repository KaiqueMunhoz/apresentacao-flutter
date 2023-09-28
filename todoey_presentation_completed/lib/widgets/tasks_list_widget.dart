import 'package:flutter/material.dart';
import 'package:todoey_presentation/widgets/task_widget.dart';

class TasksListWidget extends StatelessWidget {
  final List<String> tasks;

  const TasksListWidget({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: ListView(
          children: tasks
              .map(
                (task) => TaskWidget(title: task),
              )
              .toList(),
        ),
      ),
    );
  }
}
