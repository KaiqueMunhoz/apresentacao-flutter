import 'package:apresentacao/src/features/login/presentation/controllers/teddy_bear.controller.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class TeddyBear extends StatelessWidget {
  static const String teddyBearAsset = 'assets/animations/Teddy.flr';
  final TeddyBearController controller;

  const TeddyBear({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: FlareActor(
        teddyBearAsset,
        shouldClip: false,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.contain,
        controller: controller,
      ),
    );
  }
}
