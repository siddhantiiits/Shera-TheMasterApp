//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Videos|Movies|Series'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCard(
              context: context,
              appName: 'Netflix',
              appDisc: 'Movies and Series',
              packName: 'com.netflix.mediaclient',
              imageurl:
                  "https://lh3.googleusercontent.com/TBRwjS_qfJCSj1m7zZB93FnpJM5fSpMA_wUlFDLxWAb45T9RmwBvQd5cWR5viJJOhkI=s360"),
          appCard(
              context: context,
              appName: 'YouTube',
              appDisc: 'Videos',
              packName: 'om.google.android.youtube',
              imageurl:
                  "https://lh3.googleusercontent.com/lMoItBgdPPVDJsNOVtP26EKHePkwBg-PkuY9NOrc-fumRtTFP4XhpUNk_22syN4Datc=s360"),
          appCard(
              context: context,
              appName: 'Amazon Prime Video',
              appDisc: 'Movies and Series',
              packName: 'com.amazon.avod.thirdpartyclient',
              imageurl:
                  "https://lh3.googleusercontent.com/8KcvptOGk9PE0X-i5mxMeUxnSpL7IkpAP_kApqLHRbkOeYTe-jKPx_wu3_FaIkL0W1M=s360"),
          appCardIN(
              context: context,
              appName: 'Hotstar',
              appDisc: 'Movies | Sports | Tv Shows | News',
              packName: 'in.startv.hotstar',
              imageurl:
                  "https://lh3.googleusercontent.com/MmLkAp-x9OvA46_NgaD7dpXIsPkvb0OTJ-WlK_-7vyjZMjBMgJ0zHhsgg2NI3r0Lobc=s360"),
          appCardIN(
              context: context,
              appName: 'ZEE5',
              appDisc: 'Latest Movies, TV Shows, Originals, News, HiPi',
              packName: 'com.graymatrix.did',
              imageurl:
                  "https://lh3.googleusercontent.com/U4_8eXv9G0m3zkxYGsC85ZxfXecg9q_zd6cBhGzCCt973bMC534SpQ2iQS5slzqc1Lrh=s360"),
          appCardIN(
              context: context,
              appName: 'Voot',
              appDisc: 'Select Originals, Colors TV, MTV & more',
              packName: 'com.tv.v18.viola',
              imageurl:
                  "https://lh3.googleusercontent.com/xG9e5xK60y6j9Fj-i5Z_055tYYyVnY3pBRA83sieC5QLR3lMLN6tf-8h5E-Rb5gs7wo=s360"),
          appCardIN(
              context: context,
              appName: 'SonyLIV',
              appDisc: 'Originals, Hollywood, LIVE Sport, TV Show',
              packName: 'com.sonyliv',
              imageurl:
                  "https://lh3.googleusercontent.com/QtxELma_6y1jezI8QKqVtI8Tb0flMhPjIAzU-VSZ2jz7RwriCENXQk4M6MvUyVi5qg=s360"),
          appCardIN(
              context: context,
              appName: 'JioCinema',
              appDisc: 'Movies TV Originals',
              packName: 'com.jio.media.ondemand',
              imageurl:
                  "https://lh3.googleusercontent.com/LuruMgZZ3D08QNjUzUePG6C55PCkk6tgCNwCaeNKu3K4nKioQKGxKvxx-mUt8f6syw=s360"),
          appCardIN(
              context: context,
              appName: 'ALTBalaji',
              appDisc: 'Comedy, Thriller, Drama & Romantic Shows',
              packName: 'com.balaji.alt',
              imageurl:
                  "https://lh3.googleusercontent.com/aAdOPxYB5Y3l1bFNpOuyO9PoXImWJiMVPVbwEZ3ENYKiYDSHYs9QugACbPIAV_I53cM=s360"),
          appCardIN(
              context: context,
              appName: 'BIGFLIX',
              appDisc: 'Entertainment',
              packName: 'com.bigflix.Movies',
              imageurl:
                  "https://lh3.googleusercontent.com/aP3pcmediTADHjKPW6D_TCBIethkCNHHK9DWRkkWqh1AHY9uzBGG8xv_PtzFzsEL4Z4=s360"),
          appCard(
              context: context,
              appName: 'Viu',
              appDisc: 'Watch & Download Originals, Movies, TV Shows',
              packName: 'com.vuclip.viu',
              imageurl:
                  "https://lh3.googleusercontent.com/JaF2H1eBlSJ0rn6G62bph7CiFWgCPk62nr1FjylaSMx1G-29Rwn3jL6I2gasZdzut6I=s360"),
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
