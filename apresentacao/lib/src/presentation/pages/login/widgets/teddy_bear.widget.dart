import 'package:apresentacao/src/presentation/controllers/login/teddy_bear.controller.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class TeddyBear extends StatelessWidget {
  static const String teddyBearAsset = 'assets/Teddy.flr';

  const TeddyBear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TeddyBearController _teddyController = TeddyBearController();

    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: FlareActor(
        teddyBearAsset,
        shouldClip: false,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.contain,
        controller: _teddyController,
      ),
    );
  }
}
