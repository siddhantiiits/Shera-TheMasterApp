import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:the_master_app/func.dart';
import 'package:the_master_app/home.dart';
import 'package:string_validator/string_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

// launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

visit(String url) async {
  bool isValidURL = isURL(url);
  bool isValidEmail = isEmail(url);
  bool containHTTPS = contains(url, 'https://');
  bool containHTTP = contains(url, 'http://');
//  String url = 'https://' + url1;
  if ((url != Null) && (url.length > 0)) {
    if (containHTTP || containHTTPS) {
//      print('+++++++++++++++++++++++++++is valid url');
      launchURL(url);
    } else if (isValidURL) {
//      print('--------------------------is not valid url');
      url = 'https://' + url;
      launchURL(url);
    } else if (isValidEmail) {
      launch_mailto(url);
    } else {
      url = 'https://www.google.com/search?q=' +
          url +
          '&oq=' +
          url +
          '&aqs=chrome..69i57j46j0l4j46.17530j0j7&sourceid=chrome&ie=UTF-8';
      launchURL(url);
    }
  } else {}
}

class QRScan extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<QRScan> {
  Uint8List bytes = Uint8List(0);
  TextEditingController _inputController;
  TextEditingController _outputController;
  // FocusNode myFocusNode;

  @override
  initState() {
    super.initState();
    print('initstate  initiate');
    checkPermissions();
    this._inputController = new TextEditingController();
    this._outputController = new TextEditingController();
  }

  Future checkCamPermission() async {
    var camstatus = await Permission.camera.status;
    if (camstatus.isUndetermined || camstatus.isDenied) {
      await Permission.camera.request();
    } else if (camstatus.isPermanentlyDenied || camstatus.isRestricted) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              title: Text('Please allow various Permissions:'),
              content: Text('> Allow App to take photos.'),
              actions: <Widget>[
                FlatButton(
                    child: Text(
                      'Close',
                      style: TextStyle(color: Color(0xffd11b5d)),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      // SearchList();
                    }),
                FlatButton(
                  child: Text(
                    "Open Settings",
                    style: TextStyle(color: Color(0xffd11b5d)),
                  ),
                  onPressed: () {
                    openAppSettings();
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          });
    }
  }

  Future checkPermissions() async {
    print('permissionCam  initiate');
    var camstatus = await Permission.camera.status;
    var photoStatus = await Permission.storage.status;
    // var gall = await Permission.;
    print('\n\nCamstatus\n' +
        camstatus.toString() +
        '\n\nphotoStatus\n' +
        photoStatus.toString());

    print('\npermissionCam  initiate--1');
    if (camstatus.isUndetermined || camstatus.isDenied) {
      print('permission is undetermined');
      await Permission.camera.request();
      photoStatus.isUndetermined || photoStatus.isDenied
          ? Permission.storage.request()
          : null;
    } else if (camstatus.isPermanentlyDenied ||
        camstatus.isRestricted ||
        photoStatus.isPermanentlyDenied ||
        photoStatus.isRestricted) {
      print('permission is permanently denied');

      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              title: Text('Please allow various Permissions:'),
              content: Text(((camstatus.isPermanentlyDenied ||
                          camstatus.isRestricted) &&
                      (photoStatus.isPermanentlyDenied ||
                          photoStatus.isRestricted))
                  ? '> Allow App to take photos.\n> Allow App to access your photos.'
                  : (camstatus.isPermanentlyDenied || camstatus.isRestricted)
                      ? '> Allow App to take photos.'
                      : '> Allow App to access your photos.'),
              actions: <Widget>[
                FlatButton(
                    child: Text(
                      'Close',
                      style: TextStyle(color: Color(0xffd11b5d)),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchList()));
                      // SearchList();
                    }),
                FlatButton(
                  child: Text(
                    "Open Settings",
                    style: TextStyle(color: Color(0xffd11b5d)),
                  ),
                  onPressed: () {
                    openAppSettings();
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          });
    }

// You can can also directly ask the permission about its status.
//     if (await Permission.camera.isRestricted) {
//       print('permission is restricted');
//       return showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('title hai yeh'),
//               content: Text('content hai ye'),
//             );
//           });
//       Permission.camera.request();
//       // The OS restricts access, for example because of parental controls.
//     }
  }

  Future<bool> backButtonPressed() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SearchList()));
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: DefaultTabController(
        length: 2,
        child: WillPopScope(
          onWillPop: backButtonPressed,
          child: Scaffold(
            drawer: SideNav(context, 1),
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'QR Scanner',
                style: TextStyle(fontSize: 27),
              ),
              iconTheme: IconThemeData(
                color: Color(0xffd11b5d),
              ),
              backgroundColor: Colors.black,
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      FontAwesomeIcons.qrcode,
                      size: 35,
                    ),
                    text: 'Scan QR',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.code,
                      size: 35,
                    ),
                    text: 'Generate QR',
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.grey[300],
            body: TabBarView(
              children: [
                Builder(builder: (BuildContext context) {
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(height: 10),
                        InkWell(
                          onTap: _scan,
                          child: Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
//                        borderRadius: BorderRadius.circular(100.0),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff420420),
                                    Color(0xffd11b5d)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
//                            color: Color(0xffd11b5d),
                                  size: 55,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Scan QR from Camera',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
//                              color: Color(0xffd11b5d),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: _scanPhoto,
                          child: Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
//                        borderRadius: BorderRadius.circular(100.0),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff420420),
                                    Color(0xffd11b5d)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.photo_album,
                                  color: Colors.white,
//                            color: Color(0xffd11b5d),
                                  size: 55,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Scan QR from Photos',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
//                              color: Color(0xffd11b5d),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            TextField(
                              controller: this._outputController,
                              readOnly: true,
                              minLines: 1,
                              maxLines: 10,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.wrap_text),
                                helperText:
                                    'The barcode or QR-code you scanned will be displayed in this area.',
                                hintText:
                                    'The barcode or QR-code you scanned will be displayed in this area.',
                                hintStyle: TextStyle(fontSize: 15),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 7),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                              child: InkWell(
                                child: Container(
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff420420),
                                          Color(0xffd11b5d)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '   Visit   ',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () => visit(this._outputController.text),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
                Builder(builder: (BuildContext context) {
                  // myFocusNode = FocusNode();
                  return ListView(
                    children: <Widget>[
                      SizedBox(height: 10),
                      TextField(
                        // focusNode: myFocusNode,
                        controller: this._inputController,
                        keyboardType: TextInputType.url,
                        textInputAction: TextInputAction.go,
                        onSubmitted: (value) => _generateBarCode(value),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.text_fields),
                          helperText:
                              'Please input your Text / URL to generage QR-code image.',
                          hintText: 'Text / URL',
                          hintStyle: TextStyle(fontSize: 15),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 15),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                        child: InkWell(
                            child: Container(
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff420420),
                                      Color(0xffd11b5d)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                              ),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '   Generate   ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              // myFocusNode.unfocus();
                              _generateBarCode(this._inputController.text);
                            }),
                      ),
//                  SizedBox(height: 10),
                      _qrCodeWidget(this.bytes, context),
                    ],
                  );
                }),
              ],
            ),
            bottomNavigationBar: footer1(),
//        extendBodyBehindAppBar: true,
//        extendBody: true,
          ),
        ),
      ),
    );
  }

  Widget _qrCodeWidget(Uint8List bytes, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Card(
        elevation: 6,
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.verified_user, size: 18, color: Colors.green),
                  Text('  Generate QR-code',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  Spacer(),
//                  Icon(Icons.more_vert, size: 18, color: Colors.black54),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              decoration: BoxDecoration(
//                color: Color(0xffd11b5d),
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 10),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 190,
                    child: bytes.isEmpty
                        ? Center(
                            child: Text('Empty code ... ',
                                style: TextStyle(color: Colors.black38)),
                          )
                        : Image.memory(
                            bytes,
                          ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: GestureDetector(
                            child: Text(
                              'Remove',
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.left,
                            ),
                            onTap: () =>
                                this.setState(() => this.bytes = Uint8List(0)),
                          ),
                        ),
                        Text('|',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54)),
                        Expanded(
                          flex: 5,
                          child: GestureDetector(
                            onTap: () async {
                              final success =
                                  await ImageGallerySaver.saveImage(this.bytes);
                              print(success);
                              SnackBar snackBar;
                              if (success != Null) {
                                Fluttertoast.showToast(
                                    msg: "Successful Preservation!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Color(0xffd11b5d),
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                // snackBar = new SnackBar(
                                //     content:
                                //         new Text('Successful Preservation!'));
                                // Scaffold.of(context).showSnackBar(SnackBar(
                                //   content: Text('Successful Preservation!'),
                                //   duration: Duration(seconds: 2),
                                // ));
                              } else {
                                Fluttertoast.showToast(
                                    msg: "Save Failed",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.pink,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                // Scaffold.of(context).showSnackBar(SnackBar(
                                //   content: Text('Save failed!'),
                                //   duration: Duration(seconds: 2),
                                // ));
                              }
                            },
                            child: Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _scan() async {
    String barcode = await scanner.scan();
    this._outputController.text = barcode;
  }

  Future _scanPhoto() async {
    String barcode = await scanner.scanPhoto();
    this._outputController.text = barcode;
  }

  Future _scanPath(String path) async {
    String barcode = await scanner.scanPath(path);
    this._outputController.text = barcode;
  }

  Future _scanBytes() async {
    File file = await ImagePicker.pickImage(source: ImageSource.camera);
    Uint8List bytes = file.readAsBytesSync();
    String barcode = await scanner.scanBytes(bytes);
    this._outputController.text = barcode;
  }

  Future _generateBarCode(String inputCode) async {
    if (inputCode == null || inputCode.length <= 0) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(22.0))),
              title: Text('Invalid Input!'),
              content: Text('The Text / URL you entered is not valid.'),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    "OK",
                    style: TextStyle(color: Color(0xffd11b5d)),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            );
          });
    } else {
      Uint8List result = await scanner.generateBarCode(inputCode);
      this.setState(() => this.bytes = result);
    }
  }
}
