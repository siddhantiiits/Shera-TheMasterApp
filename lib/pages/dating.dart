//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class dating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Dating'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),

          appCard(
              context: context,
              appName: 'Tinder',
              appDisc: 'Dating, Make Friends and Meet New People',
              packName: 'com.tinder',
              imageurl:
                  'https://lh3.googleusercontent.com/stlBGKS482zWajOTk82IXFZhr22hk_NQewNOAJ0IeptPO73qfNesCyfNwW1-xwBiwv0=s360'),
          appCard(
              context: context,
              appName: 'OkCupid',
              appDisc: 'Online Dating App',
              packName: 'com.okcupid.okcupid',
              imageurl:
                  'https://lh3.googleusercontent.com/zdy6PIoCcUg-HxF6VzDnnuYy0jRHvnz0UPBvp4f6_YBrR_mBwFtHO19jV_JVIMLrihQ=s360'),
          appCard(
              context: context,
              appName: 'Bumble',
              appDisc: 'Dating. Friends. Business',
              packName: 'com.bumble.app',
              imageurl:
                  'https://lh3.googleusercontent.com/tH2ui3MqYnTyt7EG9S3DVNDO7SV7eRtts2phjaE-vZNBvf4meAx5_a5LZc_IbZGAFw=s360'),
          appCardIN(
              context: context,
              appName: 'Aisle',
              appDisc: 'Dating App For Indians',
              packName: 'com.aisle.app',
              imageurl:
                  'https://lh3.googleusercontent.com/M8QZODVQoiS6kIqJTGAkLrxS4jqbnA2iOHPoslTIDMMV7vte5nhoMHENP1s7uwt5LMo=s360'),
          appCard(
              context: context,
              appName: 'happn',
              appDisc: 'Local dating app',
              packName: 'com.ftw_and_co.happn',
              imageurl:
                  'https://lh3.googleusercontent.com/O1XquBzqm2MjscNtAI84wmnR2Q89L6aO9xjPm9MwFeu-_1CLqGV4LBSIfhUjeTWByQQ=s360'),
          appCard(
              context: context,
              appName: 'Hinge',
              appDisc: 'Dating & Relationships',
              packName: 'co.hinge.app',
              imageurl:
                  'https://lh3.googleusercontent.com/Gq_vB5FQEwU3OBPqQc132HzZXIBkEL_aeipPrXXxpYC1zf1MCZTUq38Z5rm1HePaymIe=s360'),
          appCardIN(
              context: context,
              appName: 'GoGaga',
              appDisc: 'serious relationship dating app',
              packName: 'com.app.gogaga',
              imageurl:
                  'https://lh3.googleusercontent.com/66rcSwfM4ZvgDRp0Ehjb7VMUt4AiOfwmLuhmMQuV6wX8uR2Z_a2eCSz7qDBnA17iYg=s360'),
//          appCard(
//              appName: 'Tantan',
//              appDisc: 'Date For Real',
//              packName: 'com.p1.mobile.putong',
//              imageurl:
//                  'https://lh3.googleusercontent.com/JGkjRLf89is79vT-x79doi8NUlWm5_5g4x_g6X4o-vyE6jPxb4yssr-WyZDftsfaOA=s360'),
          appCard(
              context: context,
              appName: 'Coffee Meets Bagel',
              appDisc: 'Dating App',
              packName: 'com.coffeemeetsbagel',
              imageurl:
                  'https://lh3.googleusercontent.com/LlfsNAc8w2UrmFpPSyLQHG3OwL-Rme-MI1wDETXNI2JPEXX0nuH0YWEUt4Qq8-ZBfQ=s360'),
          appCardIN(
              context: context,
              appName: 'TrulyMadly',
              appDisc: 'Dating For Singles In India',
              packName: 'com.trulymadly.android.app',
              imageurl:
                  'https://lh3.googleusercontent.com/U0qq_obE8TkpUe2idMWxaa5UNQ0QADU9JWUaHQKhg0LaB_4VEVrUCZeZw62Xl9DwzA=s360'),
          appCardIN(
              context: context,
              appName: 'Woo',
              appDisc: 'The Dating App',
              packName: 'com.u2opia.woo',
              imageurl:
                  'https://lh3.googleusercontent.com/4JI0cv0G4JT-2G8PIsvmKE99OPF7rjEjOBzjNWeYHz0E697zxzXQix_zmNDTN82ioA=s360'),
          appCard(
              context: context,
              appName: 'Moco',
              appDisc: 'Chat & Meet New People',
              packName: 'com.jnj.mocospace.android',
              imageurl:
                  'https://lh3.googleusercontent.com/yUej5r40NtPFJj_oxztZaRvVE5QxY76iTN7Kc6RQfrV4-fohtxHCwJyHsDjOcSjibVg=s360'),
          appCard(
              context: context,
              appName: 'Badoo',
              appDisc: 'Chat, Date & Meet New People',
              packName: 'com.badoo.mobile',
              imageurl:
                  'https://lh3.googleusercontent.com/n-L_egXxB8eY4EQxl3ymo-ZyV-fVqMJqsiYA9hXR1-ZMcFcMki7Hbst4U3ILW9AnHNM=s360'),
          appCard(
              context: context,
              appName: 'Azar',
              appDisc: 'Make Friends | Video Calls',
              packName: 'com.azarlive.android',
              imageurl:
                  'https://lh3.googleusercontent.com/UGnF6w2YBMtpoPs7sslQXbkNz7d_7yY0K_2iN4UpJMBm8SkoNQItXIzqs3oX4PuG97g=s360'),
//          appCard(
//              appName: '',
//              appDisc: '',
//              packName: '',
//              imageurl:
//              ''),

//
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
