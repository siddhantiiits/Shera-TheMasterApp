//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class photoEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Photo and Video Editing'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCard(
              context: context,
              appName: 'PicsArt Photo Editor',
              appDisc: 'Pic, Video & Collage Maker',
              packName: 'com.picsart.studio',
              imageurl:
                  "https://lh3.googleusercontent.com/ag4NprYdxYR-1pUD3aYE45oWZtZJGnPkwU4Vg2jnrn9VSusaZ_2Ob0X-K7KeAVeX_90=s180"),
          appCard(
              context: context,
              appName: 'Snapseed',
              appDisc: 'Google Photo Editor',
              packName: 'com.niksoftware.snapseed',
              imageurl:
                  "https://lh3.googleusercontent.com/Rilq4obCk7XIl2Pjb8XT-Ydh_aI3hBNeFwro9fFXrIAuC-zPxCZ4feE4rx5fZ3jHNLw=s360"),
          appCard(
              context: context,
              appName: 'Adobe Lightroom',
              appDisc: 'Light Editing in Pictures',
              packName: 'com.adobe.lrmobile',
              imageurl:
                  "https://lh3.googleusercontent.com/DufuDvBuhpsBkRR_myCfzw9adH_4MNKbtWynSOAZ6x_5Ir2SAjBDDVz1LOM7Lubkaxc=s360"),
          appCard(
              context: context,
              appName: 'Kine Master',
              appDisc: 'Video Editor',
              packName: 'com.nexstreaming.app.kinemasterfree',
              imageurl:
                  "https://lh3.googleusercontent.com/_tBnS0ZOKjgqhnBYoukONfuD9MBaETGIEB01codMiKnxoJSt8oEFZ_lQcrRSlLIcggk=s360"),
          appCard(
              context: context,
              appName: 'Adobe Premiere Rush',
              appDisc: 'Video Editor',
              packName: 'com.adobe.premiererush.videoeditor',
              imageurl:
                  "https://lh3.googleusercontent.com/0wMnNbqft60hniVU3LEeekf_uNm2TdXxkp_PWnuImMxf42nPZ4CgN3jKvB4eB5buAMM=s360"),
          appCard(
              context: context,
              appName: 'YouCam Perfect',
              appDisc: 'Selfie Camera and Photo Editor',
              packName: 'com.cyberlink.youperfect',
              imageurl:
                  "https://lh3.googleusercontent.com/mnbSYc6QyMgP8zWoGivOwuC274YGRDaqL1N0y6OACajwpO395Oi1Dmuz4L3y43hI6g=s360"),
          appCard(
              context: context,
              appName: 'Adobe Photoshop Express',
              appDisc: 'Photo Editor and Collage Maker',
              packName: 'com.adobe.psmobile',
              imageurl:
                  "https://lh3.googleusercontent.com/vAOR0L8CzYmDtMvzU50QeUjTzkOEv4KcBB7nWMvxDGFjwqJ02LQK9bcFM8Cq06zr1g=s360"),
          appCard(
              context: context,
              appName: 'FilmoraGo',
              appDisc: 'Video Editor',
              packName: 'com.wondershare.filmorago',
              imageurl:
                  "https://lh3.googleusercontent.com/ymBk-CVKRPOaj8aFnCj7PUPknyfblLcJNizyHvE9KBjAwzB_gWsA1YTG8eEKfYAYk2HQ=s180"),
          appCard(
              context: context,
              appName: 'Photo Lab Picture Editor',
              appDisc: 'Face Effects, Art Frames',
              packName: 'vsin.t16_funny_photo',
              imageurl:
                  "https://lh3.googleusercontent.com/n61clZcB4kYPMH2cWZ7wC4J9jk0rmCmO_94ctvYsmxARF8j8_R23ZOkdi209Z3Ml4z0=s360"),
//          appCard(
//              appName: 'Video Show',
//              appDisc: 'Video Editor, Video Maker, Photo Editor',
//              packName: 'com.xvideostudio.videoeditor',
//              imageurl:
//                  "https://lh3.googleusercontent.com/s-OvYqFt2F33nkIThCX0N1DWnWNdwiO_TYZuzYNLpdJytJKAbMJn5_92bS26W-HTImY=s360"),
          appCard(
              context: context,
              appName: 'Magisto',
              appDisc: 'Video Editor and Music Slideshow Maker',
              packName: 'com.magisto',
              imageurl:
                  "https://lh3.googleusercontent.com/LdhJ5RUsNc0vCGFY5Cpxzz4zlHWBQj8XmZMgvn5uSRiFsva7dPIQwyYaX-Jffqa0vA=s360"),
          appCard(
              context: context,
              appName: 'Prisma',
              appDisc: 'Photo Editor',
              packName: 'com.neuralprisma',
              imageurl:
                  "https://lh3.googleusercontent.com/BEcBpiyTBStYcdfWd8eFzoUpsBnSjKV1iMlRfZlPBOFXi1TAhONIHMag9VuVqi2i4w=s360"),
          appCard(
              context: context,
              appName: 'Pixlr',
              appDisc: 'Photo Editor',
              packName: 'com.pixlr.express',
              imageurl:
                  "https://lh3.googleusercontent.com/a-Cm56JAmr8UC0MSub0e1GbA82AsAXuUqO_7z5V2mQg_DsQc3RKnUUyyAepLbfjmSw=s360"),
          appCard(
              context: context,
              appName: 'Video Editor- Glitch Video Effects',
              appDisc: 'Flitch video effects and movie maker',
              packName: 'glitchvideoeditor.videoeffects.glitchvideoeffect',
              imageurl:
                  "https://lh3.googleusercontent.com/LFmTDAdyGbV36uFKVBexRNHbtScFB85C9kodcsujRidsLWn34Z-ZBuUinooHdaPzSkDY=s360"),
          appCard(
              context: context,
              appName: 'Inshot',
              appDisc: 'Video Editor and Video Maker',
              packName: 'com.camerasideas.instashot',
              imageurl:
                  "https://lh3.googleusercontent.com/mjmbWruxfo8oYHsBNI7b76KLj1AEJQo7hXwlmi05EvfFwubOjo8nQJrVEHRe4Vbgpo8=s360"),
          appCard(
              context: context,
              appName: 'PixelLab',
              appDisc: 'Text on Pictures',
              packName: 'com.imaginstudio.imagetools.pixellab',
              imageurl:
                  "https://lh3.googleusercontent.com/TqRTx4hbmOEeHz2PrH0lcWNNt83S5S22Qm06Epw5Ja-_0rPYgNYNQkAQRLaBKr2l4ew=s360"),
          appCard(
              context: context,
              appName: 'Hypocam',
              appDisc: 'Black and White Photography',
              packName: 'com.xnview.hypocam',
              imageurl:
                  "https://lh3.googleusercontent.com/nt1uDFvdFohOqwEdLNd0W5G80dm85YFCjkPris1dYs6ohqaB4Z396ykDklcwDZdb906C=s360"),
          appCard(
              context: context,
              appName: 'PowerDirector',
              appDisc: 'Video Editor App, Video Maker',
              packName: 'com.cyberlink.powerdirector.DRA140225_01',
              imageurl:
                  "https://lh3.googleusercontent.com/bFw7YAUlLmLEihMc-rZwbU-iel0YFZwCop6UgHj65ns3CzQ9SdqTyqe8alR_4grLv7o=s360"),
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
