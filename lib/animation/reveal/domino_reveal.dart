import 'package:flutter/material.dart';
import 'dart:async';
import 'delayed_reveal.dart';

Timer _dominoReset;
Duration _dominoDelay = Duration();
_getDelay() {
  if(_dominoReset == null || !_dominoReset.isActive){
    _dominoReset = Timer(Duration(milliseconds: 100), () {
      _dominoDelay = Duration();
    });
  }
  _dominoDelay += Duration(milliseconds: 150);
  return _dominoDelay;
}
class DominoReveal extends StatelessWidget {
  final Widget child;
  const DominoReveal({
    Key key,
    @required this.child,
  }) : assert(child != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return DelayedReveal(
      delay: _getDelay(),
      child: child,
    );
  }
}