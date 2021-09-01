import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../home.dart';

Widget loadp = SpinKitCubeGrid(
  color: Color(0xffd11b5d),
);

void launch_mailto(String email) async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: email,
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}

class contactUs extends StatefulWidget {
  @override
  _contactUsState createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  Future<bool> backButtonPressed() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SearchList()));
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference contact =
        FirebaseFirestore.instance.collection('contact');

    return StreamBuilder<QuerySnapshot>(
        stream: contact.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              drawer: SideNav(context, 5),
              appBar: appbar1('Get In Touch'),
              body: Text('Something went wrong'),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              drawer: SideNav(context, 5),
              appBar: appbar1('Get In Touch'),
              body: Text("Loading"),
            );
          }

          String fbUname = snapshot.data.docs[0].data()['uname'];
          String igUname = snapshot.data.docs[1].data()['uname'];
          String liUname = snapshot.data.docs[2].data()['uname'];
          String twUname = snapshot.data.docs[3].data()['uname'];

          String fbLink = snapshot.data.docs[0].data()['link'];
          String igLink = snapshot.data.docs[1].data()['link'];
          String liLink = snapshot.data.docs[2].data()['link'];
          String twLink = snapshot.data.docs[3].data()['link'];

          return WillPopScope(
            onWillPop: backButtonPressed,
            child: Scaffold(
//    backgroundColor: Colors.black,
                drawer: SideNav(context, 5),
                appBar: appbar1('Get In Touch'),
                body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    //todo:screen orientation
                    children: [
                      // Text(snapshot.data/),
                      GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
//                scrollDirection: null,
//                primary: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(20),
                        children: <Widget>[
                          InkWell(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: CachedNetworkImage(
                                        //facebook
                                        imageUrl:
                                            'https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/fb.png?alt=media&token=afb5f5be-92fd-4d1e-9e0a-ddf79e88dd31',
                                        placeholder: (context, url) => loadp,
                                      ),
                                    ),
                                  ),
                                ),
                                RotatedBox(
                                    quarterTurns: 1,
                                    child: Text(
                                      '/$fbUname',
                                      style: TextStyle(
                                        letterSpacing: 2,
                                        fontSize: 22,
//                            color: Colors.white,
                                      ),
                                    ))
                              ],
                            ),
                            onTap: () => launchURL(fbLink),
                          ),
                          InkWell(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: CachedNetworkImage(
                                        //Instagram
                                        imageUrl:
                                            'https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/ig.png?alt=media&token=e8a053f5-db78-43d9-ba19-08d19d03137b',
                                        placeholder: (context, url) => loadp,
                                      ),
                                    ),
                                  ),
                                ),
                                RotatedBox(
                                    quarterTurns: 1,
                                    child: Text(
                                      '/$igUname',
                                      style: TextStyle(
                                        letterSpacing: 2,
                                        fontSize: 22,
//                            color: Colors.white,
                                      ),
                                    ))
                              ],
                            ),
                            onTap: () => launchURL(igLink),
                          ),
                          InkWell(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: CachedNetworkImage(
                                        //twitter
                                        imageUrl:
                                            'https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/twitter.png?alt=media&token=6b951b0d-bad8-4ede-b575-1e5842468495',
                                        placeholder: (context, url) => loadp,
                                      ),
                                    ),
                                  ),
                                ),
                                RotatedBox(
                                    quarterTurns: 1,
                                    child: Text(
                                      '/$twUname',
                                      style: TextStyle(
                                        letterSpacing: 2,
                                        fontSize: 22,
//                          color: Colors.white,
                                      ),
                                    ))
                              ],
                            ),
                            onTap: () => launchURL(twLink),
                          ),
                          InkWell(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: CachedNetworkImage(
                                        //linkedin
                                        imageUrl:
                                            'https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/in.png?alt=media&token=d9b9a30a-ae2a-4f67-9a44-ef3f8dfd655a',
                                        placeholder: (context, url) => loadp,
                                      ),
                                    ),
                                  ),
                                ),
                                RotatedBox(
                                    quarterTurns: 1,
                                    child: Text(
                                      '/$liUname',
                                      style: TextStyle(
                                        letterSpacing: 2,
                                        fontSize: 22,
//                            color: Colors.white,
                                      ),
                                    ))
                              ],
                            ),
                            onTap: () => launchURL(liLink),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () => launchURL(
                            "https://www.google.com/?client=safari&channel=mac_bm"),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                              child: Container(
                                  height: 260,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: CachedNetworkImage(
                                      //Gmail
                                      imageUrl:
                                          'https://firebasestorage.googleapis.com/v0/b/appnotifi-47761.appspot.com/o/gmail.png?alt=media&token=c3c994c4-f192-4fc0-8728-2d746ec3814b',
                                      placeholder: (context, url) => loadp,
                                    ),
                                  )),
                            ),
                            Text(
                              'SHERA.NOTIFY@GMAIL.COM',
                              style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 19,
//              color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          );
        });
  }
}
