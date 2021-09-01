import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:the_master_app/func.dart';

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget founderCard(String name, String imageurl, String designation,
    String College, String linkurl, BuildContext context) {
  // imageurl = 'https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/sid.jpeg?alt=media&token=1306f46e-6992-4499-b73d-2e39d303b585' + imageurl;
  double width = MediaQuery.of(context).size.width;
  print(width);


      return InkWell(
        onTap: () => launchURL(linkurl),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          margin: EdgeInsets.fromLTRB(9, 9, 9, 9),
          elevation: 10.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.black54],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent),
                  height: width / 3,
                  width: width / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    // child: Image.asset(
                    //   'assets/welcomescreen/pg1.png',
                    //   fit: BoxFit.fitHeight,
                    // ),
                    child: CachedNetworkImage(
                      imageUrl: imageurl,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                // SizedBox(
                //   width: width / 40,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: width / 30,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8,
                          color: Colors.white),
                    ),
                    SizedBox(
                        height: width / 20,
                        width: 100,
                        child: Divider(
                          height: 20,
                          color: Colors.white,
                        )),
                    Text(
                      designation,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.4,
                          color: Colors.white),
                    ),
                    SizedBox(height: 40),
                    Text(
                      College,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }


//
//class InfoCard extends StatelessWidget {
//  InfoCard(
//      {this.name,
//      this.imageurl,
//      this.department,
//      this.position,
//      this.email,
//      this.linkedin});
//  final String name;
//  final String imageurl;
//  final String department;
//  final String position;
//  final String email;
//  final String linkedin;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: appbar1(name),
//      body: Container(
////        color: Theme.of(context).primaryColor,
//        child: Column(
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.all(16),
//              child: Container(
//                height: 200,
//                width: 200,
//                child: Hero(
//                  tag: name,
//                  child: ClipRRect(
//                    borderRadius: BorderRadius.all(Radius.circular(20)),
//                    child: CachedNetworkImage(
//                      imageUrl: imageurl,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Text(
//              name,
//              style: TextStyle(
//                fontSize: 22,
//                fontWeight: FontWeight.bold,
//              ),
//              textAlign: TextAlign.center,
//            ),
//            Text(
//              position,
//              style: TextStyle(
//                fontSize: 18,
//              ),
//              textAlign: TextAlign.center,
//            ),
//            Text(
//              department,
//              style: TextStyle(
//                fontSize: 18,
//              ),
//              textAlign: TextAlign.center,
//            ),
//            Padding(
//              padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
//              child: Column(
//                children: <Widget>[
//                  Align(
//                    alignment: Alignment.centerLeft,
//                    child: Padding(
//                        padding: EdgeInsets.fromLTRB(20, 30, 0, 20),
//                        child: Text(
//                          'Contact Info',
//                          style: TextStyle(
//                            fontSize: 30,
//                          ),
//                          textAlign: TextAlign.left,
//                        )),
//                  ),
//                  Container(
//                    child: InkWell(
//                      onTap: () {
//                        launch_mailto(email);
//                      },
//                      child: Row(
//                        children: <Widget>[
//                          Padding(
//                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                            child: Icon(
//                              Icons.email,
//                              size: 25,
//                            ),
//                          ),
//                          Text(
//                            email,
//                            style: TextStyle(
//                              fontSize: 16,
//                            ),
//                          )
//                        ],
//                      ),
//                    ),
//                  ),
//                  Container(
//                    child: InkWell(
//                      onTap: () {
//                        launchURL(linkedin);
//                      },
//                      child: Row(
//                        children: <Widget>[
//                          Padding(
//                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                            child: FaIcon(
//                              FontAwesomeIcons.linkedin,
//                              size: 25,
//                            ),
//                          ),
//                          Text(
//                            name,
//                            style: TextStyle(
//                              fontSize: 16,
//                            ),
//                          )
//                        ],
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
