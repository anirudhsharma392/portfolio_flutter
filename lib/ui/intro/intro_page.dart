import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animation/animation.dart';
import 'package:portfolio/animation/reveal/domino_reveal.dart';
import 'package:portfolio/animation/type_writer.dart';
import 'package:portfolio/mobx/central_state.dart';


final pages = [
  PageViewModel(
    pageColor: Color(0xff4B4E6D),
    body: Column(
      children: <Widget>[
        Box(text: "Hello World !"),
      ],
    ),
    title: Text(
      '',
    ),
    titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    mainImage: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        FlareAnimation(
          name: "hello",
          action: "idle",
          fit: BoxFit.fitHeight,
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Observer(
            builder: (_) {
              return centralstate.swipeflag
                  ? Container(
                      height: 100,
                      width: 90,
                      child: FlareAnimation(),
                    )
                  : Container();
            },
          ),
        )
      ],
    ),
  ),
  PageViewModel(

    pageColor: const Color(0xFF03A9F4),
    body: SizedBox(
      height: 300,
      width: 400,
      child: TyperAnimatedTextKit(
        duration: Duration(milliseconds: 3000),
          isRepeatingAnimation: false,
          onTap: () {
            print("Tap Event");
          },
          text: [
            "This portfolio app is made entirely with flutter from the scratch."
          ],
          textStyle: TextStyle(fontSize: 26.0, fontFamily: "BalooBhai"),
          textAlign: TextAlign.start,
          alignment: AlignmentDirectional.topStart // or Alignment.topLeft
          ),
    ),
    title: Container(),
    mainImage: DominoReveal(
      child: FlareAnimation(
        name: "flutter",
        action: "idle",
        fit: BoxFit.fitHeight,
      ),
    ),
    bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
  ),

];
