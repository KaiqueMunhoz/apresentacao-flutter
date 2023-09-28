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
        onPressed: () {
          // showModalBottomSheet(
          //   context: context,
          //   builder: (_) {
          //     return Column(
          //       children: [
          //         const Text('Add Task'),
          //         const SizedBox(height: 10.0),
          //         const TextField(),
          //         const SizedBox(height: 10.0),
          //         ElevatedButton(
          //           onPressed: () {},
          //           child: Text('Add'),
          //         )
          //       ],
          //     );
          //   },
          // );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}
