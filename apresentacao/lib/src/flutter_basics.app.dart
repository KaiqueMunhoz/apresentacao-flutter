import 'package:flutter/material.dart';

class FlutterBasicsApp extends StatelessWidget {
  static const String appTitle = "Apresentação: Flutter Básico";

  const FlutterBasicsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
