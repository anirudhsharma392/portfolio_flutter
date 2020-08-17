import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter/services.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/ui/page/contact_page.dart';
import 'package:spring_button/spring_button.dart';

import 'mobx/central_state.dart';
import 'ui/intro/intro_page.dart';
import 'ui/page/bio/bio.dart';
import 'ui/page/home_page.dart';
import 'ui/page/intro_page.dart';
import 'ui/page/resume/resume.dart';
import 'ui/widget/navigation_button.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 5000), () {
      setState(() {
        centralstate.swipeflag = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          fontFamily: 'Nunito',

          primarySwatch: Colors.blue,
        ),
        home: Builder(
          builder: (context) => IntroViewsFlutter(
            pages,
            doneText: Springbutton(
                text: "Let's Go !",
                width: 100,
                onPress: () {
                  prefix0.Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeftWithFade,
                          child: MyHomePage(
                            title: 'Flutter Demo Home Page',
                          )));
                }),
            showNextButton: true,
            showBackButton: true,
            onTapNextButton: () {
              centralstate.swipeflag = false;
            },
            showSkipButton: false,
            onTapDoneButton: () {
              prefix0.Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: MyHomePage(
                        title: 'Flutter Demo Home Page',
                      )));
            },
            pageButtonTextStyles: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ), //IntroViewsFlutter
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController controller = new PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            PageView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                IntroPage(),
                Home(),
                Bio(),
                Resume(),
                ContactPage(),
              ],
              controller: controller,
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 20),
              child: TabsController(controller),
            )
          ],
        ),
      ),
    );
  }
}

class TabsController extends StatefulWidget {
  final PageController controller;

  TabsController(this.controller);

  @override
  TabsControllerState createState() {
    return new TabsControllerState();
  }
}

class TabsControllerState extends State<TabsController> {
  bool isUpButtonActive = false;

  bool isDownButtonActive = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isUpButtonActive = false;
    isDownButtonActive = false;
    widget.controller.addListener(() {
      if (widget.controller.page == 0) {
        setState(() {
          isUpButtonActive = false;
          isDownButtonActive = false;
        });
      } else if (widget.controller.page == 3) {
        setState(() {
          isUpButtonActive = true;
          isDownButtonActive = false;
        });
      } else {
        setState(() {
          isUpButtonActive = true;
          isDownButtonActive = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: (!isDownButtonActive && !isUpButtonActive)
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Springbutton(onPress: () {
                    if (widget.controller.page == 0) {
                      centralstate.rocketState = 'success';
                      Future.delayed(Duration(milliseconds: 4000), () {
                        widget.controller.nextPage(
                            duration: Duration(milliseconds: 800),
                            curve: Curves.fastOutSlowIn);
                        Future.delayed(Duration(milliseconds: 1000), () {
                          centralstate.rocketState = 'idle';
                        });
                      });
                    }
                  })
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SpringButton(
                    SpringButtonType.OnlyScale,
                    NavigationButton(
                      icon: Icons.keyboard_arrow_up,
                      isEnabled: isUpButtonActive,
                    ),
                    onTapDown: (_) {
                      onUpPress();
                    },
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  SpringButton(
                    SpringButtonType.OnlyScale,
                    NavigationButton(
                      icon: Icons.keyboard_arrow_down,
                      isEnabled: isUpButtonActive,
                    ),
                    onTapDown: (_) {
                      onDownPress();
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
      ),
    );
  }

  void onDownPress() {
    widget.controller.nextPage(
        duration: Duration(milliseconds: 800), curve: Curves.fastOutSlowIn);
  }

  void onUpPress() {
    widget.controller.previousPage(
        duration: Duration(milliseconds: 800), curve: Curves.fastOutSlowIn);
  }
}

class Springbutton extends StatelessWidget {
  final Function onPress;
  final String text;
  final double height;
  final double width;

  Springbutton(
      {this.onPress, this.text = "Next >", this.height: 40, this.width: 80});

  @override
  Widget build(BuildContext context) {
    return SpringButton(
      SpringButtonType.OnlyScale,
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 13.0,
              color: Colors.black.withOpacity(.5),
              offset: Offset(6.0, 7.0),
            ),
          ],
          //shape: BoxShape.rectangle,
          //border: Border.all(),
          color: Colors.redAccent,
        ),
        child: Center(
          child: Text("$text",
              style: TextStyle(
                color: Colors.white.withOpacity(0.87),
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              )),
        ),
      ),
      onTapDown: (_) {
        onPress();
      },
    );
  }
}
