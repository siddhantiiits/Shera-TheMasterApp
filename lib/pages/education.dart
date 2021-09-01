//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Education and Learning'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),

          appCardIN(
              context: context,
              appName: 'BYJU\'S',
              appDisc: 'The Learning App',
              packName: 'com.byjus.thelearningapp',
              imageurl:
                  'https://lh3.googleusercontent.com/rFv7fIYW4u6h-M8nt4P-A5R7-8unCYOiswLw14NTKUp6yQRAVTWJQL3I1SRjvfSVLg=s360'),
          appCard(
              context: context,
              appName: 'Khan Academy',
              appDisc: 'Education and Learning',
              packName: 'org.khanacademy.android',
              imageurl:
                  'https://lh3.googleusercontent.com/wr5KhcPHfYGPiVQcAHgP4zVDTVOZU7OwwUy74jsTcAKQ6r1X1NyITJnjgQXzcovmIQ=s360'),
          appCard(
              context: context,
              appName: 'Udemy',
              appDisc: 'Online Courses',
              packName: 'com.udemy.android',
              imageurl:
                  'https://lh3.googleusercontent.com/VyIvp4Wl7DOFnIcsxrIw0pq43zUd8Yb4n96DpDRDrSsBkxIodDMMDfQk4XunNT5oDJ7Z=s360'),
          appCardIN(
              context: context,
              appName: 'Vedantu',
              appDisc: 'LIVE Learning App | Class 1-12, JEE, NEET',
              packName: 'com.vedantu.app',
              imageurl:
                  'https://lh3.googleusercontent.com/qTO_bSnkqmPFZ8k-vTFahIFDPl_iTyos_CMHVCRLq3RD78c30rQKT7S9yEdepLrRBw=s360'),
          appCardIN(
              context: context,
              appName: 'Unacademy',
              appDisc: 'Learning App',
              packName: 'com.unacademyapp',
              imageurl:
                  'https://lh3.googleusercontent.com/2s_S6uFhGUDGi-0NXX906QREgXDNoaD2qij6oASnpcR8a6przTS3cHkYkuMEclshJw=s360'),
          appCardIN(
              context: context,
              appName: 'Gradeup',
              appDisc: 'Exam Preparation App',
              packName: 'co.gradeup.android',
              imageurl:
                  'https://lh3.googleusercontent.com/3P2IGgCu41T113cSZ9HJf6QKAMEV00ydkTJgQpYl_C5v-UPyiN0F2TEhHF1xYYE5zvA=s360'),
          appCardIN(
              context: context,
              appName: 'Meritnation',
              appDisc: 'CBSE, ICSE & more ',
              packName: 'com.meritnation.school',
              imageurl:
                  'https://lh3.googleusercontent.com/Y60ivIeq0xzM_Jytlm3IdPuKBTBEVK5aHXWy22llqeL7qJ9dB4cVLOSLwx4eKCCThvE=s360'),
          appCard(
              context: context,
              appName: 'Coursera',
              appDisc: 'Online courses',
              packName: 'org.coursera.android',
              imageurl:
                  'https://lh3.googleusercontent.com/13U5Vnio6xeZwOUzpOqf6lCq3phOUw80y4e9VLAONVfkEqYbME5ySDvg28CPien5dHs=s360'),
          appCard(
              context: context,
              appName: 'Duolingo',
              appDisc: 'Learn English and More',
              packName: 'com.duolingo',
              imageurl:
                  'https://lh3.googleusercontent.com/5HArxowfNkgY9plIJWLDNi3vtH1oRdZJuW5Iv3dt4dfacjzqiQzE8tElzK7mzhXrz1o=s360'),
          appCardIN(
              context: context,
              appName: 'myCBSEguide',
              appDisc: 'CBSE & NCERT Learning App',
              packName: 'in.techchefs.MyCBSEGuide',
              imageurl:
                  'https://lh3.googleusercontent.com/NiJ0vjH6-eC_ed6RDG-eM9z9oueOyevcuAC1pAKgW9nHrdc_mdzAb5vsRjSvVrLc6ho=s360'),
          appCardIN(
              context: context,
              appName: 'Toppr',
              appDisc: 'Learning App for Class 5 - 12',
              packName: 'haygot.togyah.app',
              imageurl:
                  'https://lh3.googleusercontent.com/9hmwHHzkBOUl62WShm1aIPbcDUKc9bWTJaPM1Okq536jOvmKGJzg6UXokzVke-lIoLY=s360'),
          appCardIN(
              context: context,
              appName: 'Simplilearn',
              appDisc: ' Learn Online Courses',
              packName: 'com.mobile.simplilearn',
              imageurl:
                  'https://lh3.googleusercontent.com/Y-zgwRAJKtdyEVC9T5Y5-mQbcpLqsMF0vXeUoEnzDArtHlPWP-HGi7lgFi7sSmwlgg=s360'),
          appCardIN(
              context: context,
              appName: 'Coding Ninjas',
              appDisc: 'Learn Coding',
              packName: 'in.codingninjas.app',
              imageurl:
                  'https://lh3.googleusercontent.com/3bqfon59hQmaZjUFSXc-yK7MaIPzSNQAM2v8MQLKpIu9scf58pOpGSHWXUZRhJI_5jQ=s360'),

//
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
