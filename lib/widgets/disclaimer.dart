import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import '../home.dart';

_launchURL() async {
  const url = "https://google.com";
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true); //forceWebView
  } else {
    throw 'Could not launch $url';
  }
}

class disclaimer extends StatefulWidget {
  @override
  _disclaimerState createState() => _disclaimerState();
}

class _disclaimerState extends State<disclaimer> {
  Future<bool> backButtonPressed() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SearchList()));
  }

  @override
  Widget build(BuildContext context) {
    TextStyle linkStyle = TextStyle(color: Colors.blue);

    return WillPopScope(
      onWillPop: backButtonPressed,
      child: Scaffold(
        drawer: SideNav(context, 2),
        appBar: appbar1('Disclaimer'),

        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'The information and links provided by our mobile application is for general informational purposes only. All information on our mobile application is provided in good faith, however we make no representation or warranty of any kind, express or implied, regarding the accuracy, adequacy, validity, reliability, availability or completeness of any information on our mobile application.\n\nUnder no circumstance shall we have any liability to you for any loss or damage of any kind incurred as a result of the use of our mobile application or reliance on any information provided our mobile application. Your use of our mobile application and your reliance on any information on our mobile application is solely at your own risk.\n\nOur mobile application may contain links to other websites or content belonging to or originating from third parties or links to websites and features in banners or other advertising. Such external links are not investigated, monitored, or checked for accuracy, adequacy, validity, reliability, availability or completeness by us.\n\nWe do not warrant, endorse, guarantee, or assume responsibility for the accuracy or reliability of any information offered by third-party websites linked through the site or any website or feature linked in any banner or other advertising. We will not be a party to or in any way be responsible for monitoring any transaction between you and third-party providers of products or services.',
                        style: TextStyle(fontSize: 20, letterSpacing: 0.2),
                        textAlign: TextAlign.justify,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Team\nSHERA',
                          style: TextStyle(fontSize: 20),
//                        textAlign: TextAlign.end,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Text('Copyright Shera©️ | All Rights Reserved'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),

        bottomNavigationBar: footer1(),
//      extendBodyBehindAppBar: true,
//      extendBody: true,
      ),
    );
  }
}
