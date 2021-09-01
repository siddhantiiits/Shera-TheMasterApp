import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_master_app/home.dart';
import 'package:auto_size_text/auto_size_text.dart';

Widget buildpagewithskip(
    {BuildContext context,
    String imagePath,
    String description,
    String color,
    double pagenumber}) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  return Scaffold(
    backgroundColor: Hexcolor(color),
    body: Center(
      child: Column(
//          mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                child: ClipRRect(
                  child: Image.asset(
                    imagePath,
                    height: height * (0.7),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )),
          Expanded(
            child: Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 25, 15, 20),
                    child: AutoSizeText(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          letterSpacing: 3,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlineButton(
                          //todo:changed removd sizedbox
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchList()));
                          },
                          color: Colors.white54,
                          textColor: Colors.white54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'Skip',
                            style:
                                TextStyle(fontSize: 17, color: Colors.white54),
                          )),
                      DotsIndicator(
                        dotsCount: 5,
                        position: pagenumber,
                        decorator: DotsDecorator(
                            size: const Size.square(9.0),
                            activeSize: const Size(18.0, 9.0),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            activeColor: Colors.pink,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: IconButton(
//                      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => getStarted2())),
                          onPressed: () {
                            if (_pageController.hasClients) {
                              _pageController.animateToPage(
                                (pagenumber + 1).toInt(),
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

PageController _pageController;

class get_started_app extends StatefulWidget {
  get_started_app({Key key}) : super(key: key);

  _get_started_appState createState() => _get_started_appState();
}

class _get_started_appState extends State<get_started_app> {
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          buildpagewithskip(
              context: context,
              imagePath: "assets/welcomescreen/gs1.png",
              description:
                  'Tap on any category and explore among the best apps out there !',
              color: '#F8A400',
              pagenumber: 0),
          buildpagewithskip(
              context: context,
              imagePath: "assets/welcomescreen/gs2.png",
              description: 'Search literally anything!\nLeave the rest on us',
              color: '#8700FF',
              pagenumber: 1),
          buildpagewithskip(
              context: context,
              imagePath: "assets/welcomescreen/gs3.png",
              description: 'Everything\'s ON THE GO\nWe are a tap away!',
              color: '#FFDE00',
              pagenumber: 2),
          buildpagewithskip(
              context: context,
              imagePath: "assets/welcomescreen/gs4.gif",
              description: 'Scanning and generating QR\n Never been that easy',
              color: '#9BE135',
              pagenumber: 3),
          buildlast(context)
        ],
      ),
    );
  }
}

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            SizedBox(
              width: 300.0,
              child: FadeAnimatedTextKit(
                  duration: Duration(milliseconds: 1500),
                  repeatForever: true,

//                    onFinished: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => get_started_app())) ,

                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "Welcome !",
                    "स्वागत है !",
                    "স্বাগত",
                    "ਸਵਾਗਤ ਹੈ !",
                    "స్వాగతం",
                    "સ્વાગત છે",
                    "வரவேற்பு",
                    "la bienvenida",
                    "приветствовать",
                    "ようこそ",
                    "accueillir",
                  ],
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  alignment:
                      AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  splashColor: Colors.pink,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                    child: Text(
                      "GET STARTED", //TODO: Restrict its position... current status: It moves as word changes
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 3,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => get_started_app()))),
            )
          ],
        ),
      ),
    );
//    );
  }
}

Widget buildlast(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  return Scaffold(
    backgroundColor: Hexcolor('#D41515'),
    body: Center(
      child: Column(
//          mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(20),
//                  border: Border.all(color: Colors.white,width: 5)
                    ),
//                color: Colors.white,

                width: 300,
                child: ClipRRect(
                  child: Image.asset(
                    "assets/welcomescreen/gs5.gif",
                    height: height * (0.7),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )),
          Expanded(
            child: Container(
//              alignment: Alignment.bottomCenter,

              width: width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.black,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 25, 15, 20),
                    child: Text(
                      'It\'s one long tap to rate your favourite app',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          letterSpacing: 3,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.ac_unit),
                      ),
                      DotsIndicator(
                        dotsCount: 5,
                        position: 4,
                        decorator: DotsDecorator(
                            size: const Size.square(9.0),
                            activeSize: const Size(18.0, 9.0),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            activeColor: Colors.pink,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 80,
                        child: OutlineButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SearchList()));
                            },
                            color: Colors.white54,
                            textColor: Colors.white54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              'Finish',
                              style: TextStyle(
                                  fontSize: 17, color: Colors.white54),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
