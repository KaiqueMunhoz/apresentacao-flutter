import 'package:flutter/material.dart';
import 'package:todoey_presentation/widgets/nav_bar_widget.dart';
import 'package:todoey_presentation/widgets/tasks_list_widget.dart';

class TasksScreen extends StatelessWidget {
  static const List<String> tasks = [
    'Tarefa 1',
    'Tarefa 2',
    'Tarefa 3',
    'Tarefa 4',
  ];

  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          NavBarWidget(tasks: tasks),
          TasksListWidget(tasks: tasks),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}
