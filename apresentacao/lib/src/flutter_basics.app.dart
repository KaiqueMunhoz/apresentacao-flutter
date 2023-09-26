import 'package:flutter/material.dart';

import 'flutter_basics.routes.dart';

class FlutterBasicsApp extends StatelessWidget {
  static const String appTitle = "Apresentação: Flutter Básico";

  const FlutterBasicsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      initialRoute: FlutterBasicsRoutes.initialRoute,
      routes: FlutterBasicsRoutes.routes,
    );
  }
}
