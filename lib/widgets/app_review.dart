import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AppReview extends StatefulWidget {
  AppReview(this.appName, this.appDisc, this.imageurl);
  final String appName;
  final String appDisc;
  final String imageurl;

  // final appCard data;
  // AppReview({this.data});

  @override
  _AppRevieState createState() => _AppRevieState(
      Appdata: AppReview(this.appName, this.appDisc, this.imageurl));
}

class _AppRevieState extends State<AppReview> {
  final AppReview Appdata;
  _AppRevieState({Key key, @required this.Appdata});

  double x1;
  String x2;
  final firestoreInstance = Firestore.instance;

  final myController = TextEditingController();

  double rating_final = 3.0;

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    // ));
    // FirebaseFirestore.instance
    //         .collection("Applications/appss/${Appdata.appName}") ??
    //     firestoreInstance
    //         .collection("Applications/appss/${Appdata.appName}")
    //         .doc(Appdata.appName);

    CollectionReference reviews = FirebaseFirestore.instance
        .collection("Application/Apps/${Appdata.appName}");

    // DocumentReference reviews2 = reviews.doc(Appdata.appName);

    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return StreamBuilder<QuerySnapshot>(
        stream: reviews.snapshots(),
        builder: (context, snapshot) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                centerTitle: true,
                title: Column(children: [
                  Text(
                    'App Rating',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'by SHERA',
                    style: TextStyle(
                        fontSize: 10,
//                    fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Colors.white),
                  ),
                ]),
                iconTheme: IconThemeData(
                  color: Colors.white54,
                ),
                backgroundColor: Hexcolor('#182035'),
                actions: <Widget>[
                  IconButton(
                    alignment: Alignment.topCenter,
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => i_button())),
                    color: Colors.white54,
                    splashColor: Hexcolor('#182035'),
                    icon: Icon(Icons.info_outline),
                    tooltip: 'Info',
                  ),
                ],
              ),
              backgroundColor: Hexcolor('#182035'),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    CachedNetworkImage(
                      imageUrl: Appdata.imageurl,
                      imageBuilder: (context, imageProvider) => Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => SpinKitCubeGrid(
                        color: Color(0xffd11b5d),
                        // size: 45,
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      Appdata.appName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),

                    Text(
                      Appdata.appDisc,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    // Text(
                    //   snapshot.data.docs[0].toString(),
                    //   style: TextStyle(
                    //     fontSize: 15,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    SizedBox(
                      height: 50,
                    ),
                    RatingBar(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true, //false
                      glowColor: Colors.blue,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        size: 30,
                        color: Hexcolor("#d11b5d"),
                      ),
                      onRatingUpdate: (rating) {
                        setState(() {
                          rating_final = rating;
                        });
                        print(rating);
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        controller: myController,
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hoverColor: Colors.blue,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Enter Review (Optional)',
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                        color: Colors.white,
                        splashColor: Colors.pinkAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              letterSpacing: 2,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        onPressed: () => {
                              Firestore.instance
                                  .doc(
                                      "Application/Apps/${Appdata.appName}/${Appdata.appName}")
                                  .get()
                                  .then((doc) {
                                if (doc.exists) {
                                  x1 = snapshot.data.docs[0].data()['Rating'] +
                                      rating_final;
                                  x1 /= 2;
                                  x2 = snapshot.data.docs[0].data()['Review'] +
                                      ' | ' +
                                      myController.text;
//
                                  firestoreInstance
                                      .collection(
                                          "Application/Apps/${Appdata.appName}")
                                      .doc(Appdata.appName)
                                      .set({
                                    "Rating": x1,
                                    "Review": x2,
                                  });
                                } else {
                                  firestoreInstance
                                      .collection(
                                          "Application/Apps/${Appdata.appName}")
                                      .doc(Appdata.appName)
                                      .set({
                                    "Rating": rating_final, //x1,
                                    "Review": myController.text, //x2,
                                  });
                                }
                              }),
//
//                               print(
//                                   '--------------------------------------------\n' +
//                                       snapshot.data.toString()),
// //
//                               x1 = snapshot.data.docs[0].data()['Rating'] ??
//                                   rating_final + rating_final,
//                               x1 /= 2,
//                               x2 = snapshot.data.docs[0].data()['Review'] ??
//                                   ' ' + ' | ' + myController.text,
// //
//                               firestoreInstance
//                                   .collection(
//                                       "Applications/appss/${Appdata.appName}")
//                                   .doc(Appdata.appName)
//                                   .set({
//                                 "Rating": rating_final, //x1,
//                                 "Review": myController.text, //x2,
//                               }),

                              Fluttertoast.showToast(
                                  msg: "Review submitted Successfully",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.pink,
                                  textColor: Colors.white,
                                  fontSize: 16.0),

                              sleep(const Duration(seconds: 1)),

                              Navigator.pop(context),
                            }),
                    SizedBox(
                      height: 10,
                    )
//                      RaisedButton(
//                        color: Colors.white,
//                        onPressed: (){
//                          FirebaseFirestore.instance
//                            .collection('users')
//                            .doc(widget.data.appName)
//                            .get()
//                            .then((DocumentSnapshot documentSnapshot) {
//                        if (documentSnapshot.exists) {
//                        print('Document data: ${documentSnapshot.data().values}');
//                        } else {
//                        print('Document does not exist on the database');
//                        }
//                        });
//                        },
//                      )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class i_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Column(children: [
            Text(
              'App Rating',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.white,
              ),
            ),
            Text(
              'by SHERA',
              style: TextStyle(
                  fontSize: 10,
//                    fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.white),
            ),
          ]),
          iconTheme: IconThemeData(
            color: Colors.white54,
          ),
          backgroundColor: Hexcolor('#182035'),
        ),
        backgroundColor: Hexcolor('#182035'),
        body: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: height * (0.4),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(25, 35, 25, 25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: AutoSizeText(
                    'App Rating is developed by Shera and is dedicated for Auto sorting of Applications. It aims at giving transparency of user reviews about certain applications and helps Shera and it\'s team by creating it\'s own rating system.\n\n App Rating (by Shera) is not related to Playstore Rating in any sense. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // fontSize: 18,

//                    fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 0.4 * (height),
                maxWidth: 250,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/verifyicon.png?alt=media&token=01d99aab-bef3-4a11-9789-6884a7b44026",
                  fit: BoxFit.contain,
                  placeholder: (context, url) => SpinKitCubeGrid(
                    color: Colors.green,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          ],
        ),
//         body: SingleChildScrollView(
//           child: Stack(children: [
//             // Padding(
//             //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
//             //   child: IconButton(
//             //     alignment: Alignment.topLeft,
//             //     icon: Icon(
//             //       Icons.arrow_back,
//             //       color: Colors.white54,
//             //     ),
//             //     onPressed: () => Navigator.pop(context),
//             //   ),
//             // ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
//               child: Center(
//                 child: Column(
//                   children: [
// //                     Text(
// //                       'App Rating',
// //                       style: TextStyle(
// //                         fontSize: 25,
// //                         fontWeight: FontWeight.bold,
// //                         letterSpacing: 2,
// //                         color: Colors.white,
// //                       ),
// //                     ),
// //                     Text(
// //                       'by SHERA',
// //                       style: TextStyle(
// //                           fontSize: 10,
// // //                    fontWeight: FontWeight.bold,
// //                           letterSpacing: 2,
// //                           color: Colors.white),
// //                     ),
//                     Container(
//                       margin: EdgeInsets.fromLTRB(25, 35, 25, 25),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(18.0),
//                         child: Text(
//                           'App Rating is developed by Shera and is dedicated for Auto sorting of Applications. It aims at giving transparency of user reviews about certain applications and helps Shera and it\'s team by creating it\'s own rating system.\n\n App Rating (by Shera) is not related to Playstore Rating in any sense. ',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: 18,
//
// //                    fontWeight: FontWeight.bold,
//                               letterSpacing: 1,
//                               color: Colors.black),
//                         ),
//                       ),
//                     ),
//                     ConstrainedBox(
//                       constraints: BoxConstraints(
//                         maxHeight: 0.4 * (height),
//                         maxWidth: 250,
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(20),
//                         child: CachedNetworkImage(
//                           imageUrl:
//                               "https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/verifyicon.png?alt=media&token=01d99aab-bef3-4a11-9789-6884a7b44026",
//                           fit: BoxFit.cover,
//                           placeholder: (context, url) => SpinKitCubeGrid(
//
//                             color: Colors.green,
// //                        size: 45,
//                           ),
//                           errorWidget: (context, url, error) =>
//                               Icon(Icons.error),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ]),
//         ),
      ),
    );
  }
}
