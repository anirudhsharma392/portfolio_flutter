import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlareAnimation extends StatelessWidget {
  String action;
  String name;
  var fit;

  FlareAnimation({this.name='hand_animation',this.action='start',this.fit=BoxFit.contain});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: FlareActor(
      'assets/animations/$name.flr',
      alignment: Alignment.center,
      fit: fit,
      animation: action,
    ),);
  }
}
