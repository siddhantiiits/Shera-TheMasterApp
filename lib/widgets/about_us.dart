import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';
import 'package:the_master_app/widgets/founder_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../home.dart';

//InfoCard PulkitG() {
//  return InfoCard(
//    name: 'Pulkit Goyal',
//    email: 'pingpulkit@yahoo.com',
//    imageurl:
//        'https://drive.google.com/uc?export=view&id=1vcpj9QMBICKzzRap3uIWwkYtI6ZOM0U5',
//    department: '',
//    position: '',
//    linkedin: 'https://www.linkedin.com/in/pulkit-goyal-a84529165',
//  );
//}
//
//InfoCard SiddhantT() {
//  return InfoCard(
//    name: 'Siddhant Tiwari',
//    email: '',
//    imageurl: '',
//    department: '',
//    position: '',
//    linkedin: '',
//  );
//}

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {




  Future<bool> backButtonPressed() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SearchList()));
  }

  @override
  Widget build(BuildContext context) {

    CollectionReference colleges = FirebaseFirestore.instance
        .collection('Colleges');

    return StreamBuilder<QuerySnapshot>(
        stream: colleges.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          print(snapshot.data.docs[0].data()['1']);
        return WillPopScope(
          onWillPop: backButtonPressed,
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              drawer: SideNav(context, 4),
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  'About Us',
                  style: TextStyle(fontSize: 27),
                ),
                iconTheme: IconThemeData(
                  color: Color(0xffd11b5d),
                ),
                backgroundColor: Colors.black,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: 'SHERA',
                    ),
                    Tab(
                      text: 'Developers',
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
//  color: Colors.black,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/bg.jpg',
                                ),
                              ),
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
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 10),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'We aim to emerge as a leading brand which is committed to solve real-world problems using technological approach.\n\nWe will bring the most immersive and comfortable User Interface to people emerging as a leading brand in the field of technology.',
                                          style: TextStyle(
                                            fontSize: 18,
                                            //                          letterSpacing: 2,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
//                                    overflow: TextOverflow.ellipsis,
//                                    textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            25, 10, 0, 23),
                                        child: Container(
                                          height: 170,
                                          width: 10,
                                          child: VerticalDivider(
                                            color: Colors.white,
                                            thickness: 1,
                                          ),
                                        ),
                                      ),
                                      //
                                      Column(
                                        //                          mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 10),
                                            child: RotatedBox(
                                              quarterTurns: 1,
                                              child: Text(
                                                'VISION',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  letterSpacing: 8,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
//  color: Colors.black,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
//            'assets/bg.jpg',
                                  'assets/bg.jpg',
                                ),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.airplanemode_active,
                                    color: Colors.white60,
                                    size: 50,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 10),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Shera is one of a kind and looks forward to deliver innovative products for the ease of mankind.\n\nWe aim to deliver outstanding products and updates throughout and in turn creating a seamless experience for the users.',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            25, 10, 0, 23),
                                        child: Container(
                                          height: 170,
                                          width: 10,
                                          child: VerticalDivider(
                                            color: Colors.white,
                                            thickness: 1,
                                          ),
                                        ),
                                      ),
//                                   Padding(
//                                     padding: const EdgeInsets.fromLTRB(
//                                         0, 10, 23, 25),
//                                     child: Container(
//                                       height: 170,
//                                       width: 10,
//                                       child: VerticalDivider(
// //    width: 10,
//                                         color: Colors.white,
//                                         thickness: 1,
//                                         //                          indent: 100,
//                                       ),
//                                     ),
//                                   ),
                                      Column(
                                        //                          mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 10),
                                            child: RotatedBox(
                                              quarterTurns: 1,
                                              child: Text(
                                                'MISSION',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  letterSpacing: 8,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                      // Column(
                                      //   //                          mainAxisAlignment: MainAxisAlignment.center,
                                      //   children: <Widget>[
                                      //     Padding(
                                      //       padding: const EdgeInsets.fromLTRB(
                                      //           0, 0, 0, 10),
                                      //       child: RotatedBox(
                                      //         quarterTurns: -1,
                                      //         child: Text(
                                      //           'MISSION',
                                      //           style: TextStyle(
                                      //             fontSize: 22,
                                      //             letterSpacing: 8,
                                      //             fontWeight: FontWeight.bold,
                                      //             color: Colors.white,
                                      //           ),
                                      //           textAlign: TextAlign.center,
                                      //         ),
                                      //       ),
                                      //     )
                                      //   ],
                                      //   //                        ),
                                      // ),
//                Padding(
//                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 23),
//                  child: Container(
//                    height: 170,
//                    width: 10,
//                    child: VerticalDivider(
////    width: 10,
//                      color: Colors.white,
//                      thickness: 1,
//                      //                          indent: 100,
//                    ),
//                  ),
//                ),
//                //
//                Column(
//                  //                          mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
//                      child: RotatedBox(
//                        quarterTurns: 1,
//                        child: Text(
//                          'MISSION',
//                          style: TextStyle(
//                            fontSize: 22,
//                            letterSpacing: 8,
//                            fontWeight: FontWeight.bold,
//                            //                                letterSpacing: 2,
//                            color: Colors.white,
//                          ),
//                          textAlign: TextAlign.center,
//                        ),
//                      ),
//                    )
//                  ],
//                  //                        ),
//                )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

//            Container(
////              margin: EdgeInsets.all(10),
//              decoration: BoxDecoration(
////                borderRadius: BorderRadius.circular(20.0),
//                gradient: LinearGradient(
//                  colors: [Color(0xffd11b5d), Color(0xff420420)],
//                  begin: Alignment.topLeft,
//                  end: Alignment.bottomRight,
//                ),
//              ),
//              child: Padding(
//                padding: const EdgeInsets.fromLTRB(10.0, 11.0, 10.0, 11.0),
//                child: Container(
//                  color: Colors.white,
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      Expanded(
//                        child: SingleChildScrollView(
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.center,
//                            children: <Widget>[
//                              SizedBox(height: 5),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.center,
//                                children: <Widget>[
//                                  Icon(Icons.remove_red_eye),
//                                  SizedBox(width: 10),
//                                  Text(
//                                    'Vision',
//                                    style: TextStyle(
//                                      fontSize: 25,
//                                      fontWeight: FontWeight.bold,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(5.0),
//                                child: Text(
//                                  'We aim to emerge as a leading brand which is commited to solve real-world problems using technological approach.\nWe will bring the most immersive and comfortable User Interface to people emerging as a leading brand in the field of Technology.',
//                                  style: TextStyle(fontSize: 18.5),
//                                  textAlign: TextAlign.justify,
//                                ),
//                              ),
//                              SizedBox(height: 30),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.center,
//                                children: <Widget>[
//                                  FaIcon(FontAwesomeIcons.rocket),
//                                  SizedBox(width: 10),
//                                  Text(
//                                    'Goal',
//                                    style: TextStyle(
//                                      fontSize: 25,
//                                      fontWeight: FontWeight.bold,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(5.0),
//                                child: Text(
//                                  'Shera is one of a kind and looks forward to deliver innovative products for the ease of mankind.\nWe aim to deliver outstanding products and updates throughout and in return creating a seamless experience for the users.',
//                                  style: TextStyle(fontSize: 18.5),
//                                  textAlign: TextAlign.justify,
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                      Container(
////                        color: Colors.grey,
//                        child: Text('Copyright Shera©️ | All Rights Reserved'),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),

//            Icon(Icons.directions_car),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      founderCard(
                          '  Pulkit Goyal   ',
                          'https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/pg4.jpg?alt=media&token=d2f5ed12-867a-4526-b7a6-12d47c171d21',
                          'CORE DEVELOPER',
//                          snapshot.data.docs[0].data()['1'],
                      'f',
                          'https://www.google.com/?client=safari&channel=mac_bm',
                          context),
                      founderCard(
                          'Siddhant Tiwari',
                          'https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/sid.jpg?alt=media&token=d457369c-aaae-44ba-b938-a0a26f74ffe6',
                          'CORE DEVELOPER',
//                          snapshot.data.docs[0].data()['1'],
                          'f',
                          '',
                          context),
                      founderCard(
                          'Sugandhi Gupta',
                          'https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/sg.jpg?alt=media&token=3ebee214-b952-4a81-8eac-bb5b30037704',
                          'CONTENT ANALYST',
//                          snapshot.data.docs[0].data()['1'],
                          'f',
                          '',
                          context),
                    ],
                  ),
//              GridView(
//                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: 2,
//                ),
//                children: <Widget>[
//                  InkWell(
//                    onTap: () {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => PulkitG()));
//                    },
//                    child: founderCard(
//                        'Pulkit Goyal',
//                        'https://drive.google.com/uc?export=view&id=1vcpj9QMBICKzzRap3uIWwkYtI6ZOM0U5',
//                        context),
//                  ),
//                  InkWell(
//                    onTap: () {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => SiddhantT()));
//                    },
//                    child: founderCard('Siddhant Tiwari', '', context),
//                  ),
//                ],
//              )
                ],
              ),
              bottomNavigationBar: footer1(),
//        extendBody: true,
            ),
          ),
        );
      }
    );
  }
}
