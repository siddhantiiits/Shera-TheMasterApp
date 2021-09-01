//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Food'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCardIN(
              context: context,
              appName: 'Zomato',
              appDisc: 'Restaurant Finder and Food Delivery App',
              packName: 'com.application.zomato',
              imageurl:
                  'https://lh3.googleusercontent.com/bk1WWaf0R9NpyYleMlg9C8ttglyT0T61jqAfrNylBRMPorCVh-QuGjxTc1inAPIxnQ=s360'),
          appCardIN(
              context: context,
              appName: 'Swiggy',
              appDisc: 'Food Order & Delivery',
              packName: 'in.swiggy.android',
              imageurl:
                  'https://lh3.googleusercontent.com/A8jF58KO1y2uHPBUaaHbs9zSvPHoS1FrMdrg8jooV9ftDidkOhnKNWacfPhjKae1IA=s360'),
          appCard(
              context: context,
              appName: 'Uber Eats',
              appDisc: 'Food Delivery',
              packName: 'com.ubercab.eats',
              imageurl:
                  'https://lh3.googleusercontent.com/MMBG4AZmpMhSfhF5k7QnFmhvFbaF5ZC_BtEOIKRt9TIkUZjul2lWwPZV75PwTfoSm23-jgMxkroRGA-vkDg=s360'),
          appCard(
              context: context,
              appName: 'Domino\'s',
              appDisc: 'Pizza Online Delivery',
              packName: 'com.Dominos',
              imageurl:
                  'https://lh3.googleusercontent.com/_lq2HX0YJNDrr0EeUebLAB2JsGbRGyoFY-XOnuUFTPfeEqaHNIyMOGqLx-oq4mUWPpn0=s360'),
          appCard(
              context: context,
              appName: 'foodpanda',
              appDisc: 'Food delivery, amazing offers',
              packName: 'com.india.foodpanda.android',
              imageurl:
                  'https://lh3.googleusercontent.com/9qkEtFq7hZzxRRappuIO6mGJ6dHX1jB3UxZEjbrJVV3nzwV65fPR4wkADFul4VqzAOA=s360'),
          appCard(
              context: context,
              appName: 'Pizza Hut',
              appDisc: 'Pizza Delivery – Order Food',
              packName: 'com.pizzahutuk.orderingApp',
              imageurl:
                  'https://lh3.googleusercontent.com/0Tg1WjgxG7heMONj-WOwarkvBaUfQ4SUV--JetZgDw-vRUxAZfKB6pMd9fzeREc_-Q0K=s360'),
          appCardIN(
              context: context,
              appName: 'Grofers',
              appDisc: 'Grocery Delivered Safely ',
              packName: 'com.grofers.customerapp',
              imageurl:
                  'https://lh3.googleusercontent.com/dfUJZCIJhu6AGl4HzjZEKHxvX8j7KcN67lAgj-B4pcgT_4tO7PlbBb5BehEn1B2x6hM=s360'),
//          appCard(
//              appName: 'Easyday',
//              appDisc: 'Grocery Online',
//              packName: 'in.pkd.easyday.futuregroup',
//              imageurl:
//                  'https://lh3.googleusercontent.com/DsaYYg8-AaL_nTN1muDj5EryWaLkc-yL3ePTVo7sJKIyLilrxTtP-b_h-Sln-Rtwnrll=s360'),
          appCard(
              context: context,
              appName: 'Amazon Shopping (Pantry)',
              appDisc: 'Shop Grocery',
              packName: 'in.amazon.mShop.android.shopping',
              imageurl:
                  'https://lh3.googleusercontent.com/TpxeOgptQworHjromT4yoo05oHk72dSE0pVQowPfb3u3rozTwLjYUHxTpEzIYMemomQ=s360'),
          appCardIN(
              context: context,
              appName: 'FAASOS',
              appDisc: 'Order Food Online',
              packName: 'com.done.faasos',
              imageurl:
                  'https://lh3.googleusercontent.com/_3aHrokZXhldrk2zVVumKSqKRmuFIUfWtF0k11UwB3QIixlAUIRjVA011pIdWnDpSek=s360'),
          appCardIN(
              context: context,
              appName: 'IRCTC eCatering',
              appDisc: 'Food on Track',
              packName: 'com.irctc.fot',
              imageurl:
                  'https://lh3.googleusercontent.com/WORjw0JSY_R4bfP1VZrNfrr-7XQVpufE1XFia1NdK6-FzJ9-QSZUmbP_MuSAhifUoQ=s360'),

//
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
