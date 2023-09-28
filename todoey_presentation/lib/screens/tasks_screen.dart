import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60.0,
          right: 30.0,
          bottom: 30.0,
          left: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(
                Icons.list,
                size: 30.0,
                color: Colors.lightBlue,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Todoey',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
