import 'package:flutter/material.dart';

class FlutterBasics extends StatelessWidget {
  static const String appTitle = "Apresentação: Flutter Básico";
  final Widget child;

  const FlutterBasics({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: child,
    );
  }
}
