import 'package:flutter/material.dart';
import 'package:the_master_app/home.dart';
import 'package:the_master_app/func.dart';
import 'package:the_master_app/widgets/get_started.dart';
import 'func.dart';
import 'dart:async';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcome_screen(),
      theme:
          ThemeData(primaryColor: Color(0xffd11b5d), accentColor: Colors.black),
    );
  }
}

// class SearchList1 extends StatelessWidget {
//   //just for testing
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: SideNav(context, 0),
//       appBar: appbar1('SearchList'),
//       body: Center(
//         child: Text('this is SearchList'),
//       ),
//     );
//   }
// }

class welcome_screen extends StatefulWidget {
  @override
  _welcome_screenState createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  Widget build(context) {
    print('build is called');
    return SplashScreen.callback(
      name: 'assets/splashf.flr',
      onSuccess: (_) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => IntroScreen()));
        });
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => IntroScreen()));
        // Navigator.pushReplacement(context, PageRouteBuilder())
        // Navigator.of(context).pushReplacement(PageRouteBuilder(
        //     pageBuilder: (_, __, ___) => IntroScreen())); //Searchlist
      },
      onError: (e, s) {},
      startAnimation: '0',
      loopAnimation: 'Untitled',
      until: () => Future.delayed(Duration(milliseconds: 30)),
      endAnimation: '3',
      backgroundColor: Colors.black,
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with AfterLayoutMixin<IntroScreen> {
  // int numberOfOpens = 0;
  // @override
  // void initState() {
  //   super.initState();
  //   _incrementStartup();
  // }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new SearchList()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new welcome()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Loading...'),
      ),
    );
  }

  /// Will get the startupnumber from shared_preferences
  /// will return 0 if null
  // Future<int> _getIntFromSharedPref() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final startupNumber = prefs.getInt('startupNumber');
  //   if (startupNumber == null) {
  //     return 0;
  //   }
  //   return startupNumber;
  // }

  // /// Reset the counter in shared_preferences to 0
  // Future<void> _resetCounter() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt('startupNumber', 0);
  // }

  // Future<void> _incrementStartup() async {
  //   final prefs = await SharedPreferences.getInstance();
  //
  //   int lastStartupNumber = await _getIntFromSharedPref();
  //   int currentStartupNumber = await ++lastStartupNumber;
  //
  //   await prefs.setInt('startupNumber', currentStartupNumber);
  //
  //   if (1 == 1) {
  //     setState(() {
  //       numberOfOpens = currentStartupNumber;
  //     });
  //   }

  // if (currentStartupNumber == 3) {
  //   setState(
  //       () => _haveStarted3Times = '$currentStartupNumber Times Completed');
  //
  //   // Reset only if you want to
  //   // await _resetCounter();
  // } else {
  //   setState(() =>
  //       _haveStarted3Times = '$currentStartupNumber Times started the app');
  // }
  // }

  // Future faltuFunc() async {
  //   print('faltuFunc mei enter hogya');
  //   await _incrementStartup();
  //   print('await k baad faltuFunc mei enter hogya');
  //   print('\n-----\n' + numberOfOpens.toString() + '\n-----');
  //   if (numberOfOpens < 2) {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => SearchList1()));
  //     // SearchList1();
  //   } else {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => SearchList()));
  //
  //     // return SearchList();
  //   }
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   faltuFunc();
  //   return Container();
  // Future.delayed(Duration(seconds: 2));
  // print('build mei enter hogya');
  // // await _incrementStartup();
  // print('\n-----\n' + numberOfOpens.toString() + '\n-----');
  // if (numberOfOpens < 2) {
  //   return SearchList1();
  // } else {
  //   return SearchList();
  // }
  // (numberOfOpens < 3)
  //     ? Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => SearchList1()))
  //     : Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => SearchList()));
  // return Scaffold(
  //   body: Center(
  //     child: Text(
  //       _haveStarted3Times,
  //       style: TextStyle(fontSize: 32),
  //     ),
  //   ),
  // );
  // }

  // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  // Future<int> _counter;
  //
  // Future<void> _incrementCounter() async {
  //   print('increment is called');
  //   final SharedPreferences prefs = await _prefs;
  //   final int counter = (prefs.getInt('counter') ?? 0) + 1;
  //
  //   setState(() {
  //     _counter = prefs.setInt("counter", counter).then((bool success) {
  //       return counter;
  //     });
  //   });
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   print('0--initState is called');
  //   _counter = _prefs.then((SharedPreferences prefs) {
  //     return (prefs.getInt('counter') ?? 0);
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   print('1--build is called');
  //   return Scaffold(
  //     body: FutureBuilder<int>(
  //         future: _counter,
  //         builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
  //           print('2--builder is called');
  //           _incrementCounter();
  //           print(snapshot.connectionState);
  //           switch (snapshot.connectionState) {
  //             case ConnectionState.waiting:
  //               return const CircularProgressIndicator();
  //             default:
  //               if (snapshot.hasError) {
  //                 return Text('Error: ${snapshot.error}');
  //               } else {
  //                 if (snapshot.data < 3) {
  //                   return SearchList1();
  //                 } else {
  //                   return SearchList();
  //                 }
  //
  //                 // ${snapshot.data} < 1 ? :
  //                 // ${(snapshot.data < 1) ? :};
  //                 // return Text(
  //                 //   'Button tapped ${snapshot.data} time${snapshot.data == 1 ? '' : 's'}.\n\n'
  //                 //       'This should persist across restarts.',
  //                 // );
  //               }
  //           }
  //         }),
  //   );
  // }
}

///////////////****** Testing data  ******///////////////

//print('force is   $force');
//print(
//'------------------------\n notifi is   $notificationData \n------------');
//print('view is   $view');
//print('link is   $onTapRbtnLink');
//print('message is   $msg');
//print('rightbtn is   $RbtnLabel');

// showDialog(
// context: context,
// builder: (BuildContext context) {
// return AlertDialog(
// title: Text('title hai yeh'),
// content: Text('content hai ye'),
// );
// });
