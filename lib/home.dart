import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:the_master_app/func.dart';
import 'package:the_master_app/pages/dating.dart';
import 'package:the_master_app/pages/education.dart';
import 'package:the_master_app/pages/food.dart';
import 'package:the_master_app/pages/health.dart';
import 'package:the_master_app/pages/jobs.dart';
import 'package:the_master_app/pages/music.dart';
import 'package:the_master_app/pages/onlineshop.dart';
import 'package:the_master_app/pages/read.dart';
import 'package:the_master_app/pages/trading.dart';
import 'package:the_master_app/pages/travel.dart';
import 'package:the_master_app/pages/photo_edit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_master_app/pages/videos.dart';
import 'package:the_master_app/pages/wallets.dart';
import 'package:the_master_app/pages/social.dart';
import 'package:the_master_app/pages/browsers.dart';

class Building {
  int id;
  String name;
  String place;
  IconData icon;

  Building({this.id, this.name, this.place, this.icon});
}

class CardPage extends StatelessWidget {
  final Building building;
  CardPage({this.building});
  Widget build(context) {
    switch (building.id) {
      case 1:
        return social();
      case 2:
        return jobs();
      case 3:
        return wallets();
      case 4:
        return browsers();
      case 5:
        return food();
      case 7:
        return videos();
      case 8:
        return music();
      case 9:
        return onlineshop();
      case 10:
        return travelApps();
      case 11:
        return photoEdit();
      case 12:
        return trading();
      case 13:
        return read();
      case 14:
        return health();
      case 15:
        return education();
      case 17:
        return dating();
      default:
        return Scaffold(
          appBar: appbar1('Government Services'),
          body: SafeArea(
            child: Center(
              child: Text(
                ' Page under Development :/ \n\n Your Developers are working on it 24x7.\n Sorry for the delay.\n Get back here soon!',
                style: TextStyle(color: Colors.red, fontSize: 20.0),
              ),
            ),
          ),
        );
    }
  }
}

class SearchList extends StatefulWidget {
//  SearchList({Key key}) : super(key: key);
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  Icon menuOption = Icon(
    Icons.menu,
    color: Color(0xffd11b5d),
  );
  Widget appBarTitle = Text(
    "Categories",
    style: TextStyle(color: Colors.white, fontSize: 27),
  );

  Icon actionIcon = Icon(
    Icons.search,
    color: Color(0xffd11b5d),
  );
  final key = GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = TextEditingController();
  List<Building> _list;
  List<Building> _searchList = List();

  bool _IsSearching;
  String _searchText = "";
  _SearchListState() {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
          _buildSearchList();
        });
      } else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
          _buildSearchList();
        });
      }
    });
  }
  @override
  void initState() {
    super.initState();

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
//        _serialiseAndNavigate(message);
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
        _serialiseAndNavigate(message);
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
        _serialiseAndNavigate(message);
      },
    );

    _IsSearching = false;
    init();
  }

  Future<void> _serialiseAndNavigate(Map<String, dynamic> message) async {
    // setState(() => this.context = context);
    print(' i am called');

    var notificationData = await message['data'];
    var view = await notificationData['view'];
    int idForSpecificCategory =
        int.parse(notificationData['idForSpecificCategory']);
    String photoLink = notificationData['photoLink'];
    String onTapRbtnLink = notificationData['onTapRbtnLink'];
//    print('link in start is ' + onTapRbtnLink);
    String title = notificationData['title'];
    String msg = notificationData['msg'];
    String RbtnLabel = notificationData['RbtnLabel'];
    var force = notificationData['force'];

    if (view != null) {
      print('view is not null instead view is ' + view.toString());
      if (view == 'dialogBox') {
        print('view is open dialog');
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              print('builder being executed');
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))),
                title: Text(title),
                content: Text(msg),
                actions: <Widget>[
                  force == null
                      ? FlatButton(
                          child: Text(
                            "Close",
                            style: TextStyle(color: Color(0xffd11b5d)),
                          ),
                          onPressed: () => Navigator.pop(context),
                        )
                      : null,
                  FlatButton(
                      child: Text(
                        RbtnLabel,
                        style: TextStyle(color: Color(0xffd11b5d)),
                      ),
                      onPressed: () {
                        launchURL(onTapRbtnLink);
                        Navigator.pop(context);
                      }),
                ],
              );
            });
      } else if (view == 'openSpecificCategory') {
        switch (idForSpecificCategory) {
          case 1:
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => social()));
            break;
          case 2:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => jobs()));
            break;
          case 3:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => wallets()));
            break;
          case 4:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => browsers()));
            break;
          case 5:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => food()));
            break;
          case 7:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => videos()));
            break;
          case 8:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => music()));
            break;
          case 9:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => onlineshop()));
            break;
          case 10:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => travelApps()));
            break;
          case 11:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => photoEdit()));
            break;
          case 12:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => trading()));
            break;
          case 13:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => read()));
            break;
          case 14:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => health()));
            break;
          case 15:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => education()));
            break;
          case 17:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => dating()));
            break;
          default:
            return Scaffold(
              body: SafeArea(
                child: Center(
                  child: Text(
                    'OOPPS!! We landed on this Page by Mistake!\nThis Page is under Development :/ \n\n Your Developers are working on it 24x7.\n Sorry for the delay.\n Get back here soon!',
                    style: TextStyle(color: Colors.red, fontSize: 20.0),
                  ),
                ),
              ),
            );
        }
        // Navigator.push(context, MaterialPageRoute(builder: (context) => disclaimer());
      }
//      else if (view == 'fullScreen') {
//        //todo: fullscreen notification
//        return showDialog(
//            context: context,
//            builder: (BuildContext context) {
//              return AlertDialog(
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.all(Radius.circular(32.0))),
//                title: Text(title),
//                content: Text(msg),
//                actions: <Widget>[
//                  force == null
//                      ? FlatButton(
//                          child: Text("Later"),
//                          onPressed: () => Navigator.pop(context),
//                        )
//                      : null,
//                  FlatButton(
//                      child: Text(RbtnLabel),
//                      onPressed: () {
//                        launchURL(onTapRbtnLink);
//                        Navigator.pop(context);
//                      }),
//                ],
//              );
//            });
//      }
//      else if (view == 'launchURL') {
//        var url_string = notificationData['string'];
//        launchURL(url_string);
//      }
      // If there's no view it'll just open the app on the first view
    }
//    );
  }

  void init() {
    _list = List();
    _list.add(
      Building(
          id: 1,
          name: "Social and Messengers",
          place: "Social message text video call vc chat group media photo story status stories talk live network chatbot memes connect share post voice communication slack dm direct tweet blog follow streak profile likes fb" +
              'twitter facebook instagram ig whatsapp messenger telegram snapchat tumblr linkedin pinterest flickr reddit skype discord azar slack elyments',
          icon: FontAwesomeIcons.users),
    );
    _list.add(
      Building(
          id: 3,
          name: "Wallets",
          place: "Money transfer payment bill electricity recharge pay cash credit debit MI Pay MI credit UPI paypal cashback finance e-commerce  " +
              'Google Pay Tez paytm bhim upi phonepe oxigen mobikwik ola freecharge bajaj finserv amazon',
          icon: FontAwesomeIcons.rupeeSign),
    );
    _list.add(
      Building(
          id: 4,
          name: "Browsers",
          place: "internet search google surfing private incognito google " +
              'chrome tor firfox vivaldi brave privacy',
          icon: FontAwesomeIcons.globeAsia),
    );
    _list.add(
      Building(
          id: 5,
          name: "Food",
          place: "drink tasty hungry yum yummy chicken paneer mushroom taste pizza home delivery food meal restaurant favourite food doorstep beverages italian chinese breakfast lunch brunch dinner appetizer healthy hygienic " +
              'Zomato Swiggy uber eats dominos domino\'s foodpanda pizzahut grofers amazon pantry faasos irctc catering ecatering',
          icon: FontAwesomeIcons.pizzaSlice),
    );
//    _list.add(
//      Building(
//          id: 6,
//          name: "Local Travel",
//          place: "ola uber car bike auto taxi nearby ",
//          icon: FontAwesomeIcons.car),
//    );
    _list.add(
      Building(
          id: 7,
          name: "Movies and Series",
          place: "movie movies series tv video netflix anime shows entertaiinment unlimited content popular watch anytime anywhere genre action thriller romance comedy romcom sitcom stream music kids shows cartoons subscibe subscription live  " +
              'netflix youtube yt prime amazon hotstar zee5 voot sony liv sonyliv jio cinema altbalaji balaji bigflix viu',
          icon: FontAwesomeIcons.play),
    );
    _list.add(
      Building(
          id: 8,
          name: "Music",
          place: "songs music sound voice youtube spotify wynk play language english hindi punjabi gujarati marathi assamese telugu bengali tamil oriya international top hits metal country rock edm folk musical thatre soul music jazz blues electronic  dance music instrumental orchestra disco pop classical Rhythum punk hip hop heavy metal romantic lofi playlist sad inspiration morning meditation sufi road trip relaxed nostalgic retro hits devotional " +
              'spotify jio saavn gaana wynk apple hungama amazon google play soundcloud',
          icon: FontAwesomeIcons.headphones),
    );
    _list.add(
      Building(
          id: 9,
          name: "Online Shopping",
          place: "buy sale offers clothes shoes watches jewellery tops t-shirts jeans dresses jumpsuits jackets athlesuire sports wear bottom wears sneakers floaters sandal flip flops crocs converse shades swim wear ethnic baga hand bags sidebags duffle suitcase spectacles spects goggles elecronics phone laptops kids wear " +
              " amazon flipkart myntra jiomart snapdeal lenscart caratlane nykaa firstcry pepperfry ajio bewakoof olx quickr paytm mall zivame",
          //name all type of clothes present, watches, books names of sites etc
          icon: FontAwesomeIcons.shoppingCart),
    );
    _list.add(
      Building(
          id: 10,
          name: "Travelling and Local",
          place: "stay trip tour resort hotel travel train flight booking bus taxi car room suite hospitality holiday package rail reservattion domestic economic cheap  flights luxury living space bus travels, AC Volvo bus, carpooling  bus hire  best rates seat availability apartments vacation rentals accomodation cabs international  " +
              'mmt makemytrip  oyo redbus ola irctc trivago uber goibibo tripadvisor yatra zoomcar airindia cleartrip indigo vistara rail yatri meru cabs spicejet airasia ',
          icon: FontAwesomeIcons.umbrellaBeach),
    );
    _list.add(
      Building(
          id: 11,
          name: "Photo and Video Editing",
          place: "collage maker editing editor contrast merge create creative add effects filter text sticker drawing tools project fonts gifs digital enhance edit organise store share animations selfies beauty cam templates modification rotate straighten background transition animation video edit editting crop photo pic pics pictures edit bright contrast filters frame collage " +
              'picsart snapseed  adobe lightroom kinemaster kine master premiere rush photoshop express youcan perfect filmorago photo lab picture editor magisto prisma pixlr glitch video inshot pixellab hypocam powerdirector',
          icon: FontAwesomeIcons.icons), //or use photo_filter
    );
    _list.add(
      Building(
          id: 12,
          name: "Trading",
          place: " trading trade brokerage demat mutual fund sip sensex nifty nse bse upstox zerodha money moneycontrol dividend share market stock rich invest exchange barter deal buy sell bussiness" +
              'moneycontrol angel broking motilal oswal sharekhan kotak stock trader icici direct upstox pro hdfc securities kite zerodha groww ',
          icon: FontAwesomeIcons.chartLine),
    );
    _list.add(
      Building(
          id: 2,
          name: "Jobs",
          place: "job internship part time money incentives full fulltime parttime workfromhome wfh wfa workfromanywhere stipend sallary employee employment employer unemployment summer intern data analytics science software development hire recruit recruiter companies marketing package IT sector networking vacancy expirience location eligibility work project marketplace " +
              'naukri.com monster just job indeed glassdoor internshala upwork freelancer truelancer letsintern',
          icon: FontAwesomeIcons.briefcase),
    );
    _list.add(
      Building(
          id: 13,
          name: "Writing and Reading",
          place: "poem article novel snippets story breakup blog read essays liners bed time stories captions short long write up upvote claps downvote ask questions insights editorials editor writer answers reddit express expression words  quotes  micro-tales prompts thoughts ideas emotions library books audiobooks magazines design portfolio" +
              'quora medium tumblr miraquil mirakee pinterest scribd yourquote wordpress blogger goodreads amazon kindle google play books notojo',
          icon: FontAwesomeIcons.featherAlt),
    );
    _list.add(
      Building(
          id: 14,
          name: "Health and Fitness",
          place: "health fitness exercise drink water run jog activity goal track walk run steps heart rate calories aerobics body care muscles abs cycling kilometres count  height weight bmi time speed obesity slim body shape size " +
              'google fit nike run club map my walk healthifyme fitbit myfitnesspal 7 minute workout stepsetgo ssg lifesum',
          icon: FontAwesomeIcons.heartbeat),
    );
    _list.add(
      Building(
          id: 15,
          name: "Education and Learning",
          place: "study learn code watch videos practice questions Personalized Learning App Comprehensive Online Tutoring Instant doubt resolution  guidance  DPP (Daily Practice Problem) Practice Sheet Discussion  career classes  math, art, computer programming, economics, physics, chemistry, biology, medicine, finance, history, Syllabus Coverage CBSE, ICSE, NTSE, Olympiads, IIT JEE (Main & Advanced) and NEET  UPSC, SSC, IIT JEE, CAT  exams technical ML AI machine learning DL deep artificial intelligence data science python competition competitive audit free  courses " +
              'byju\'s byjus khan academy udemy vedantu unacademy gradeup meritnation coursera duolingo mycbseguide cbse toppr simplilearn coding ninjas',
          icon: FontAwesomeIcons.bookReader),
    );

    _list.add(
      Building(
          id: 17,
          name: "Dating",
          place: "love hookup hug kiss sex friend girlfriend boyfriend boy girl man women heart date dating coffee  " +
              'tinder okcupid bumble aisle happn hinge gogaga coffee meets bagel trulymadly woo moco badoo azar',
          icon: FontAwesomeIcons.kissWinkHeart),
    );
    _list.add(
      Building(
          id: 16,
          name: "Government Services",
          place: "PAN passport Licence  ",
          icon: FontAwesomeIcons.landmark),
    );
    // _list.add(
    //   Building(
    //       id: 18,
    //       name: "Games",
    //       place: "play fun game arcade adventure  ",
    //       icon: FontAwesomeIcons
    //           .gamepad), //counselling and depression, finance and trading
    // );
    _searchList = _list;
  }

  Future<bool> backButtonPressed() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(22.0))),

            // title: Text('Are you sure you want to exit the App?'),
            title: Text('Do you want to exit the App?'),
            // content: Text(''),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  "No",
                  style: TextStyle(color: Color(0xffd11b5d)),
                ),
                onPressed: () => Navigator.of(context).pop(false),
              ),
              FlatButton(
                child: Text(
                  "Yes",
                  style: TextStyle(color: Color(0xffd11b5d)),
                ),
                onPressed: () => Navigator.of(context).pop(true),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    var deviceOrientation = MediaQuery.of(context).orientation;

    //SizeConfig().init(context);
    return Scaffold(
      key: key,
      appBar: buildBar(context),
      body: WillPopScope(
        onWillPop: backButtonPressed,
        child: GridView.builder(
          itemCount: _searchList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Uiitem(_searchList[index]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CardPage(building: _searchList[index])));
              },
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: deviceOrientation == Orientation.portrait ? 3 : 5,
          ),
        ),
      ),
      drawer: SideNav(context, 0),
      bottomNavigationBar: footer1(),
      extendBodyBehindAppBar: true,
      extendBody: true,
    );
  }

  List<Building> _buildList() {
    return _list; //_list.map((contact) =>  Uiitem(contact)).toList();
  }

  List<Building> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _searchList =
          _list; //_list.map((contact) =>  Uiitem(contact)).toList();
    } else {
      _searchList = _list
          .where((element) =>
              element.name.toLowerCase().contains(_searchText.toLowerCase()) ||
              element.place.toLowerCase().contains(_searchText.toLowerCase()))
          .toList();
      print('${_searchList.length}');
      return _searchList; //_searchList.map((contact) =>  Uiitem(contact)).toList();
    }
  }

  Widget buildBar(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: appBarTitle,
        iconTheme: IconThemeData(color: Color(0xffd11b5d)),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = Icon(
                    Icons.close,
                    color: Color(0xffd11b5d),
                  );
                  this.appBarTitle = TextField(
                    autofocus: true,
                    // focusNode: myFocusNode,
                    controller: _searchQuery,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        hintText: "Search here..",
                        hintStyle: TextStyle(color: Colors.white)),
                  );
                  _handleSearchStart();
                } else {
                  _handleSearchEnd();
                }
              });
            },
          ),
        ]);
  }

  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.actionIcon = Icon(
        Icons.search,
        color: Color(0xffd11b5d),
      );
      this.appBarTitle = Text(
        "Categories",
        style: TextStyle(color: Colors.white),
      );
      _IsSearching = false;
      _searchQuery.clear();
    });
  }
}

class Uiitem extends StatelessWidget {
  final Building building;
  Uiitem(this.building);

  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      margin: EdgeInsets.fromLTRB(9, 9, 9, 9),
      elevation: 20.0,
      shadowColor: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
              colors: [Color(0xff420420), Color(0xffd11b5d)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 20.0 / 13,
//              icon: Icon(Icons.volume_up),
              child: Center(
                child: FaIcon(
                  this.building.icon,
//                color: Color(0xff00008b),
//                color: Color(0xff03256c),
                  color: Colors.white,
                  size: 45,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 1.0),
              child: Text(
                this.building.name,
                textAlign: TextAlign.center,
                style: TextStyle(
//                          color: Color(0xff00008b),
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: 15.5),
              ),
            ),
            SizedBox(height: 0.0),
          ],
        ),
      ),
    );
  }
}
