//add to pubspec-------  share: ^0.6.5+1 TODO: this

import 'package:flutter/material.dart';
import 'package:the_master_app/home.dart';
import 'package:the_master_app/test.dart';
import 'package:the_master_app/widgets/about_us.dart';
import 'package:the_master_app/widgets/app_review.dart';
import 'package:the_master_app/widgets/contact.dart';
import 'package:the_master_app/widgets/disclaimer.dart';
import 'package:the_master_app/widgets/qr_scan.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_master_app/widgets/loader.dart';
import 'dart:async';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:device_apps/device_apps.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:auto_size_text/auto_size_text.dart';

launchURLforApp(String packageName) async {
  var url = 'https://play.google.com/store/apps/details?id=' +
      packageName +
      '&hl=en_IN';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

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

launchURLinApp(String url) async {
//  const url = "https://google.com";
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true); //forceWebView
  } else {
    throw 'Could not launch $url';
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// Widget tickmark(String packageName) {
//   if (true) {
//     return Icon(
//       Icons.check_circle_outline,
//       color: Color(0xffd11b5d),
//     );
//   } else {
//     return Text('i');
//   }
//
// //  return Icon(
// //    Icons.check_circle_outline,
// //    color: Color(0xffd11b5d),
// //  );
// }

// Future ifisInstalled(String packageName) async {
//   bool isInstalled = await DeviceApps.isAppInstalled(packageName);
//   return isInstalled;
// }

// Future<Widget> ifInstalled(String packageName) async {
//   bool isInstalled = await DeviceApps.isAppInstalled(packageName);
//   if (isInstalled) {
//     return Icon(
//       Icons.check_circle_outline,
//       color: Color(0xffd11b5d),
//     );
//   } else {
//     return Text('');
//   }
// }

Future<bool> isAppInstalled(String packageName) async {
  bool isInstalled = await DeviceApps.isAppInstalled(packageName);
  if (isInstalled) {
    DeviceApps.openApp(packageName);
    return true;
  } else {
    launchURLforApp(packageName);
    return false;
  }
}

Widget SideNav(context, int num) {
  var date = new DateTime.now().toString();

  var timeParse = DateTime.parse(date);
  int res = timeParse.hour;

  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          child: DrawerHeader(
            child: Center(
              child: Text(
                res > 4 && res < 12
                    ? 'Good Morning'
                    : (res > 12 && res < 16
                        ? 'Good Afternoon'
                        : (res > 16 && res < 22
                            ? 'Good Evening'
                            : 'Hey There!')),
                style: TextStyle(
                    color: Colors.white,
                    // color: res > 4 && res < 12
                    //     ? Colors.black
                    //     : (res > 12 && res < 16
                    //         ? Colors.black
                    //         : (res > 16 && res < 22
                    //             ? Colors.white
                    //             : Colors.white)),
                    fontSize: 27),
//
//                'SHERA!',
//                style: TextStyle(color: Colors.white, fontSize: 27),
              ),
            ),
            decoration: BoxDecoration(
//              gradient: , //todo: appropriate colors
              color: Color(
                res > 4 && res < 12
                    ? 0xffd11b5d
                    : (res > 12 && res < 16
                        ? 0xff420420
                        : (res > 16 && res < 22 ? 0xff14093C : 0xff000000)),
              ),
            ),
          ),
        ),
        ListTile(
          selected: num == 0 ? true : false,
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => SearchList()));

            // Update the state of the app
            // ...
            // Then close the drawer
            // Navigator.pop(context);
          },
        ),
        ListTile(
          selected: num == 1 ? true : false,
          leading: Icon(FontAwesomeIcons.qrcode),
          title: Text('QR Scanner'),
          onTap: () {
            // Navigator.pushNamedAndRemoveUntil(
            //     context, '/qr', ModalRoute.withName('/homee'));
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => QRScan()));

//            QRScan();
            // Update the state of the app
            // ...
            // Then close the drawer
//            Navigator.pop(context);
          },
        ),
        ListTile(
          selected: num == 2 ? true : false,
          leading: Icon(Icons.filter),
          title: Text('Disclaimer'),
//          onPressed: () => setState(() {
//            _launched = _launchInWebViewOrVC(toLaunch);
//          }),
          onTap: () {
            // Navigator.of(context).pushNamedAndRemoveUntil(
            //     '/disc', ModalRoute.withName('/homee'));
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => disclaimer()));
          },
        ),
        ListTile(
          selected: num == 3 ? true : false,
          leading: Icon(Icons.shop),
          title: Text('Rate on Google PlayStore!'),
          onTap: () {
            launchURL(
                'https://play.google.com/store/apps/details?id=com.webdevwithus.the_master_app&hl=en_IN');
            // print('rate app wala button clicked!!\n---------\n');
            // // print('\n\n---aaplink---\n' +
            // //     snapshot.data.documents[1]["applink"]);
            // if (!snapshot.hasData) {
            //   print('koi data nhi hai');
            // } else {
            //   launchURL(snapshot.data.documents[1]['applink']);
            // }

            // return showDialog(
            //   context: context,
            //   builder: (BuildContext context) {
            //     // return object of type Dialog
            //     return AlertDialog(
            //       title: new Text("Alert Dialog title"),
            //       content: new Text("Alert Dialog body"),
            //       actions: <Widget>[
            //         // usually buttons at the bottom of the dialog
            //         new FlatButton(
            //           child: new Text("Close"),
            //           onPressed: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //       ],
            //     );
            //   },
            // );
            // Update the state of the app
            // ...
            // Then close the drawer
//            Navigator.push(
//                context, MaterialPageRoute(builder: (context) => test1()));
          },
        ),
        ListTile(
          selected: num == 4 ? true : false,
          leading: Icon(Icons.people),
          title: Text('About Us'),
          onTap: () {
            // Navigator.of(context).pushNamedAndRemoveUntil(
            //     '/abtUs', ModalRoute.withName('/homee'));
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => AboutUs()));

            // Update the state of the app
            // ...
            // Then close the drawer
//            Navigator.pop(context);
          },
        ),
        ListTile(
          selected: num == 5 ? true : false,
          leading: Icon(Icons.phone),
          title: Text('Contact Us'),
          onTap: () {
            // Navigator.of(context).pushNamedAndRemoveUntil(
            //     '/contactUs', ModalRoute.withName('/homee'));
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => contactUs()));
          },
        ),
        ListTile(
          selected: num == 5 ? true : false,
          leading: Icon(Icons.share),
          title: Text('Share with Friends!'),
          onTap: () {
            // Navigator.of(context).pushNamedAndRemoveUntil(
            //     '/contactUs', ModalRoute.withName('/homee'));
            Share.share('Hey! Am using Shera.You should try it too! ://https://play.google.com/store/apps/details?id=com.webdevwithus.the_master_app&hl=en_IN');
          },
        ),
      ],
    ),
  );
}

Widget footer1() {
  return BottomAppBar(
    child: Text(
      "S   H   E   R   A",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 20),
    ),
    color: Colors.white.withOpacity(0.5),
    // shape: CircularNotchedRectangle(),
  );
//  Text("hiii");  BuildContext context
}

Widget appbar1(String title) {
  print('Category --- ' + title);
  return AppBar(
    centerTitle: true,
    title: AutoSizeText(
      title,
      // style: TextStyle(fontSize: 27),
      // softWrap: false,
    ),
    iconTheme: IconThemeData(
      color: Color(0xffd11b5d),
    ),
    backgroundColor: Colors.black,
  );
}

Widget appCard({
  String appName,
  String appDisc,
  String packName,
  String imageurl,
  BuildContext context,
}) {
  print(appName);
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              // minHeight: 49,
              // minWidth: 49,
              maxWidth: 58,
              maxHeight: 60,
            ),
            child: CachedNetworkImage(
              imageUrl: imageurl,
              fit: BoxFit.cover,
              placeholder: (context, url) => SpinKitCubeGrid(
                color: Color(0xffd11b5d),
                size: 45,
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
        title: Text(
          appName,
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(appDisc),
        onTap: () => isAppInstalled(packName),
        onLongPress: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AppReview(appName, appDisc, imageurl))),
      ),
    ),
  );
}

Widget appCardIN({
  String appName,
  String appDisc,
  String packName,
  String imageurl,
  BuildContext context,
}) {
//  Future<bool> ifInstalled1 async = await DeviceApps.isAppInstalled(packName);
  print(appName);
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListTile(
        leading: Container(
          constraints: BoxConstraints(
            // minHeight: 49,
            // minWidth: 49,
            maxWidth: 58,
            maxHeight: 60,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.white, Colors.lightGreenAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: CachedNetworkImage(
                  imageUrl: imageurl,
                  placeholder: (context, url) => SpinKitCubeGrid(
                    color: Color(0xffd11b5d),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              appName,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        subtitle: Text(appDisc),
        onTap: () => isAppInstalled(packName),
        onLongPress: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AppReview(appName, appDisc, imageurl))),
      ),
    ),
  );
}





