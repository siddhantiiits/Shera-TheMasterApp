import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('hiiii'),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
//                  image: DecorationImage(
//                    fit: BoxFit.fitWidth,
//                    image: AssetImage(
//                      'assets/bg.jpg',
//                    ),
//                  ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.visibility,
                      color: Colors.white60,
                      size: 50,
                    ),
                  ),
//                  Padding(
//                    padding: const EdgeInsets.symmetric(horizontal: 100),
//                    child: Divider(
//                      color: Colors.white54,
//                      thickness: 2,
//                      height: 8,
//
//                    ),
//                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
//                      Text(
//                        'hey',
                        Flexible(
//                        width: (0.8 * width),
                          child: Text(
//                          'hiiiiiiiiiiiiiiiiiiiiiiiihiiiiiiiiiiiiiiiiiiiiiiii',
                            '>We aim to emerge as a leading brand which is committed to solve real-world problems using technological approach.\n\n>We will bring the most immersive and comfortable User Interface to people emerging as a leading brand in the field of technology.',
                            style: TextStyle(
                              fontSize: 18,
//                          letterSpacing: 2,
                              color: Colors.white,
                            ),
                            softWrap: true,
//                          overflow: TextOverflow.ellipsis,
//                        textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          height: 160,
                          child: VerticalDivider(
                            width: 30,
                            color: Colors.white,
                            thickness: 2,
//                          indent: 100,
                          ),
                        ),
//
                        Column(
//                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'V \nI \nS \nS \nI \nO \nN ',
                              style: TextStyle(
                                fontSize: 18,
//                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
//                        ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.yellow,
//          temp(),
    );
  }
}

Widget temp() {
  return Stack(
    children: <Widget>[
      Container(color: Colors.grey),
      Positioned(
//        top: 20,
        child: Container(
          alignment: Alignment.topCenter,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.visibility,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ),
      Positioned(
        top: 70,
        height: 500,
        width: 400,
        child: Container(
//          height: 500,
//          width: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.red),
          child: Column(
            children: [
              Text(
                'VISION',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 1.50,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
