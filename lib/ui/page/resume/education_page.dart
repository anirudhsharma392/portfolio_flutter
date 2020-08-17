import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animation/reveal/domino_reveal.dart';


class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
    education(),
    SizedBox(height: 20,)
    ,DominoReveal(child: institute("  Graduation: ","Bharati Vidyapeeth's College of Engineering, New Delhi","(2016-2020)"))
    ,DominoReveal(child: institute("    Class XII:    ","Modern Vidya Niketan School,  Sector 17, Faridabad","(2014-2016)"))
    ,DominoReveal(child: institute("    Class X:       ","D. A. V. Public School, Sector 37 Faridabad","(-2014)"))
      ],
    );
  }

  Widget education(){
    return  Container(
            child: Text("EDUCATION",
                style: TextStyle(
                  fontFamily: 'BalooBhai',
                  fontSize: 50,
                )));
  }
  Widget institute(String type,String inst,String year){
    return Container(margin: EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Column(
          children: <Widget>[
            Text("$type",
                style: TextStyle(
                  fontFamily: 'BalooBhai',
                  fontSize: 24,
                )),
            Text("$year",
                style: TextStyle(
                  fontFamily: 'BalooBhai',
                  fontSize: 20,
                )),
          ],
        ), Flexible(
              child: Container(margin: EdgeInsets.only(right: 10),
                child: Text("$inst",
                style: TextStyle(
                  fontFamily: 'BalooBhai',
                  fontSize: 24,
                )),
              ),
            )
      ],),
    );
  }
  }

