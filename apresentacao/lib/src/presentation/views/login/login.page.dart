import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlareController _teddyController = FlareControls();

    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: FlareActor(
            "assets/Teddy.flr",
            shouldClip: false,
            alignment: Alignment.bottomCenter,
            fit: BoxFit.contain,
            controller: _teddyController,
          ),
        ),
      ),
    );
  }
}
