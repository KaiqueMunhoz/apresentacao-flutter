import 'package:apresentacao/src/features/about_me/presentation/pages/about_me.page.dart';
import 'package:apresentacao/src/features/login/presentation/pages/login.page.dart';
import 'package:flutter/material.dart';

abstract class FlutterBasicsRoutes {
  static const String initialRoute = FlutterBasicsRoutesNames.login;

  static Map<String, WidgetBuilder> routes = {
    FlutterBasicsRoutesNames.login: (_) => Login(),
    FlutterBasicsRoutesNames.aboutMe: (_) => const AboutMe(),
  };
}

abstract class FlutterBasicsRoutesNames {
  static const login = "login";
  static const aboutMe = "about_me";
}
