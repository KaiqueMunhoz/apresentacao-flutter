import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlareController _teddyController = FlareControls();
    EdgeInsets devicePadding = MediaQuery.of(context).padding;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: devicePadding.top + 50.0,
        ),
        child: Column(
          children: [
            Container(
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
            Container(
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
