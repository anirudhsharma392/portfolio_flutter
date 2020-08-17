
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/bottom_page_text.dart';



class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[

          Container(margin: EdgeInsets.only(top: 500),
            child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Expanded(
            child: RotateAnimatedTextKit(

                text: ["ADAPTABLE", "RESILIENCE", "CURIOUS","EXPLORER"],
                textStyle: TextStyle(fontSize: 22.0, fontFamily: "BalooBhai",color: Colors.white70),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
            ),
          ),

            Expanded(
              child: RotateAnimatedTextKit(

                  text: ["LEADERSHIP", "OPTIMISTIC", "RESPONSIBLE","CREATIVE"],
                  textStyle: TextStyle(fontSize: 22.0, fontFamily: "BalooBhai",color: Colors.white70),
                  textAlign: TextAlign.start,
                  alignment: AlignmentDirectional.topStart // or Alignment.topLeft
              ),
            ),
        ],
      ),
          ),
          Container(alignment:Alignment.topCenter,margin:EdgeInsets.only(top: 10),child: Text(''),),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              SizedBox(
                height: 150.0,
              ),
              Text(
                "I have completed Bachelor of Technology in Computer Science from BVCOE,New Delhi.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.87),
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0),
              ),
              SizedBox(
                height: 24.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "And I love making Flutter Applications.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.87),
                      fontWeight: FontWeight.w700,
                      fontSize: 25.0),
                ),
              ),
            ],
          ),
          BottomPageText("About"),
        ],
      ),
    );
  }
}
