//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class health extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Health and Fitness'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),

          appCard(
              context: context,
              appName: 'Google Fit',
              appDisc: 'Health and Activity Tracking',
              packName: 'com.google.android.apps.fitness',
              imageurl:
                  'https://lh3.googleusercontent.com/jArSD-kxOa2llPXvqrjRcEJdL4XhjP8-WqEfg9UAlYF8v0qzXAZ0EI5k96l0pf3tDNg=s360'),
          appCard(
              context: context,
              appName: 'Nike Run Club',
              appDisc: 'Track your progress',
              packName: 'com.nike.plusgps',
              imageurl:
                  'https://lh3.googleusercontent.com/J1z46Zsn3wlC2RSekq_iflMgR2e1ezR9-NH3Mqkc77Ji1k12Yal3w6zrYnGsJs5-Rfs=s360'),
          appCard(
              context: context,
              appName: 'Map My Walk',
              appDisc: 'Walk with Map My Walk',
              packName: 'com.mapmywalk.android2',
              imageurl:
                  'https://lh3.googleusercontent.com/qqauQuc86SCmvIaVgpYESIkmaVjsHWp2KH_pvJlGf1UtVooNsLcjUiCtTFXUbMdNzgDm=s360'),
          appCardIN(
              context: context,
              appName: 'HealthifyMe',
              appDisc: 'Calorie Counter, Home Workout & Weight Loss Plans',
              packName: 'com.healthifyme.basic',
              imageurl:
                  'https://lh3.googleusercontent.com/gBih6nHb6of5Orzd4WQshya75Vw-vXihocdiF0GsaIfSoTCrxUAzZq-8lxwLZTG8ysM=s360'),
          appCard(
              context: context,
              appName: 'Fitbit',
              appDisc: 'Activity Tracker',
              packName: 'com.fitbit.FitbitMobile',
              imageurl:
                  'https://lh3.googleusercontent.com/QhMCymTyxJbzRiwMBA-GYooS-nVKm3fHg2CSRyKHvhmC-e5vOibfST73y1MmScvtPw=s360'),
          appCard(
              context: context,
              appName: 'MyFitnessPal',
              appDisc: 'Calorie Counter',
              packName: 'com.myfitnesspal.android',
              imageurl:
                  'https://lh3.googleusercontent.com/WkGXEesGEu4ayZctjADlDKdscS3Ve1hmoVzhHQYh9NuK9QpDA3Rx6ae3jg7VH2dFZqk=s360'),
          appCard(
              context: context,
              appName: '7 Minute Workout',
              appDisc: 'Fitness App',
              packName: 'com.popularapp.sevenmins',
              imageurl:
                  'https://lh3.googleusercontent.com/1eiegVnXIGq6qCXLsMmM8GftCpMNFq66fR2frALLnon5hp-EMNvQ3QJyBNh-6nTNfdg=s360'),
          appCardIN(
              context: context,
              appName: 'StepSetGo',
              appDisc: 'Step Earn Redeem',
              packName: 'com.pepkit.ssg',
              imageurl:
                  'https://lh3.googleusercontent.com/JRFbLXsAp9ufiQZDDwmxH-siF8QhHyuc-jeM7dfOYHMvAksYbWB9-QCovkQrwJHlSOs=s360'),
          appCard(
              context: context,
              appName: 'Lifesum',
              appDisc: 'Diet Plan, Macro Calculator & Food Diary',
              packName: 'com.sillens.shapeupclub',
              imageurl:
                  'https://lh3.googleusercontent.com/xbF2DUtTeEB7E4wy0hArgj2QoxlufPiXei72K9t_1PdfFmM-ws-zrJAB7ODRwGU8smg=s360'),

//
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
