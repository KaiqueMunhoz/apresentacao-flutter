import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Task> _tasks = <Task>[
      Task(name: 'Comprar leite'),
      Task(name: 'Comprar banana'),
      Task(name: 'Comprar um copo'),
    ];

    return ListView.builder(
      itemBuilder: (context, index) {
        final task = _tasks[index];
        return TaskTile(
          taskTitle: task.name,
        );
      },
      itemCount: _tasks.length,
    );
  }
}
