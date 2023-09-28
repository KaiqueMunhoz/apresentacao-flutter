import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {
  const Heading1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Todoey',
      style: TextStyle(
        color: Colors.white,
        fontSize: 60.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
