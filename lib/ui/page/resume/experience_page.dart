import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animation/reveal/domino_reveal.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        experience(),
        Container(
            height: MediaQuery.of(context).size.height - 130,
            child: ListView(
              children: <Widget>[
                Carde(
                  background: Image.asset("assets/animations/cute.gif"),
                  head: "Flutter Developer",
                  exp: "Jan 2020 - present",
                  body:
                      "Employed at Jsimple Technosoft and developing a AI infused human resource mobile application.",
                ),
                Carde(
                  background: Image.asset("assets/animations/planets.gif"),
                  head: "Flutter Intern",
                  exp: "Jan 2019 - Dec 2019",
                  body:
                      "Developed a baseball simulation game using flutter framework for Imagine Sports",
                ),
                Carde(
                  background: Image.asset("assets/animations/sleep.gif"),
                  head: "Android Training",
                  exp: "June 2018 - July 2018",
                  body:
                      "Created an employ attendance application which marks an attendance using Geofencing.",
                ),
                Carde(
                    background: Image.asset("assets/animations/cute.gif"),
                    head: "Java Training",
                    exp: "June 2017 - July 2017",
                    body:
                        "Oracle certified core java course completed at Ducat. Studied the concepts of Oops ,Data Structures and Algorithms.")
              ],
            ))
      ],
    );
  }

  Widget experience() {
    return Container(
        child: Text("EXPERIENCE",
            style: TextStyle(
              fontFamily: 'BalooBhai',
              fontSize: 50,
            )));
  }
}

class Carde extends StatelessWidget {
  final String head;
  final String exp;
  final String body;
  final Widget background;

  Carde(
      {this.head = 'Birth of Universe',
      this.body = "Text which goes inside the body appears over here.",
      this.background,
      this.exp = "2 M"});

  @override
  Widget build(BuildContext context) {
    return DominoReveal(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ExpansionCard(
          background: background,
          title: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  head,
                  style: TextStyle(
                    fontFamily: 'BalooBhai',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  exp,
                  style: TextStyle(
                      fontFamily: 'BalooBhai',
                      fontSize: 20,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7),
              child: Text(body,
                  style: TextStyle(
                      fontFamily: 'BalooBhai',
                      fontSize: 20,
                      color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
