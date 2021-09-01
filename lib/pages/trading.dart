//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class trading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Trading'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCardIN(
              context: context,
              appName: 'Moneycontrol',
              appDisc: 'Share Market | News | Portfolio',
              packName: 'com.divum.MoneyControl',
              imageurl:
                  'https://lh3.googleusercontent.com/qbqjDFiK6wInTH4KrDaNIxbvng1XMs2F7Cv_DbzZcm-ljDA0Ikyp9y4HxOLIhp2r_ks=s180'),
          appCardIN(
              context: context,
              appName: 'Angel Broking',
              appDisc: 'Demat Account & Stock Trading App',
              packName: 'com.msf.angelmobile',
              imageurl:
                  'https://lh3.googleusercontent.com/zTC5C-4RFIEzS7CrZ9qOwtmenOYbcNBIHQzkoAG6NX7E2FrPq_3mSu8zP8z3scdsqQY=s360'),
          appCardIN(
              context: context,
              appName: 'Motilal Oswal',
              appDisc: 'Online Trading App for Shares, Forex: MO Trader',
              packName: 'mosl.powerapp.com',
              imageurl:
                  'https://lh3.googleusercontent.com/KY63ksx-LwwBvrmiqwFBhoALdHTuuiX8QzxbFl_hbuFWCEo6hPO2XPFuzQib6kOv3MU=s360'),
          appCardIN(
              context: context,
              appName: 'Sharekhan',
              appDisc: 'Share Market App for Sensex,NSE,BSE,MCX',
              packName: 'com.sharekhan.androidsharemobile',
              imageurl:
                  'https://lh3.googleusercontent.com/c7DluorJs1Gfpr5ra274cMp8Cm7UFpdHeRcW0Ki6JuZMfu-0ykr1eZHH7lNxjsgnjQ=s360'),
          appCardIN(
              context: context,
              appName: 'Kotak Stock Trader App ',
              appDisc: 'BSE, NSE, Nifty & Sensex',
              packName: 'com.msf.kotak',
              imageurl:
                  'https://lh3.googleusercontent.com/2_-KcG0Cym_5V3OPMDIMB_ZNJ6utPDr_pf5Gl7gmA2hns0ZI9YhpQgqZTJJK96gM-3E=s360'),
          appCardIN(
              context: context,
              appName: 'ICICI direct Mobile',
              appDisc: 'Trading',
              packName: 'com.icicisecurity',
              imageurl:
                  'https://lh3.googleusercontent.com/0rV7fxxU_GCh2GQIqmPr7NQ4T9ZNMUuq_9g7qMywGE1M5KzHL8FG4qJlFg8PAouLs5s=s360'),
          appCardIN(
              context: context,
              appName: 'Upstox Pro',
              appDisc: 'Stock trading app for NSE, BSE & MCX',
              packName: 'in.upstox.pro',
              imageurl:
                  'https://lh3.googleusercontent.com/Vikh3F13WxvjDKGoSd7ARmzGCvuVpD5O0tntwi4G3-7UK7je-xXy9Nry83IkQrnyxOs=s360'),
          appCardIN(
              context: context,
              appName: 'HDFC securities',
              appDisc: 'Mobile Trading',
              packName: 'com.snapwork.hdfcsec',
              imageurl:
                  'https://lh3.googleusercontent.com/L6wGFQZjGcAmPmCw8g3qhG_5xTD1LLx9KJA8wP_d73nJadC535D_m3LNLbRqaITNBpA=s360'),
          appCardIN(
              context: context,
              appName: 'Kite by Zerodha',
              appDisc: 'Mobile Trading',
              packName: 'com.zerodha.kite3',
              imageurl:
                  'https://lh3.googleusercontent.com/wnNYBAH1m-XJMfduOHfEATQAhCwyKUYeHAD1Fi9-OjtxKyPKjFEmgWvbx-OX2dM65xjp=s360'),
          appCardIN(
              context: context,
              appName: 'Groww',
              appDisc: 'Stocks, Demat, Mutual Fund, SIP',
              packName: 'com.nextbillion.groww',
              imageurl:
                  'https://lh3.googleusercontent.com/7q2dwnqAFr91NBSBRGcE1tZQCJL-FYbUKEuy103bTmQowLl3yNY73ozy5cf1mso4pCS4=s360'),
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
