import 'package:apresentacao/src/presentation/pages/login/login.page.dart';
import 'package:flutter/material.dart';

abstract class FlutterBasicsRoutes {
  static const String initialRoute = FlutterBasicsRoutesNames.login;

  static Map<String, WidgetBuilder> routes = {
    FlutterBasicsRoutesNames.login: (_) => const Login(),
  };
}

abstract class FlutterBasicsRoutesNames {
  static const login = "login";
}
