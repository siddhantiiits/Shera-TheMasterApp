//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Music'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCard(
              context: context,
              appName: 'Spotify',
              appDisc: 'Listen to new music, podcasts, and songs',
              packName: 'com.spotify.music',
              imageurl:
                  "https://lh3.googleusercontent.com/UrY7BAZ-XfXGpfkeWg0zCCeo-7ras4DCoRalC_WXXWTK9q5b0Iw7B0YQMsVxZaNB7DM=s360"),
          appCardIN(
              context: context,
              appName: 'JioSaavn',
              appDisc: 'Music & Radio – JioTunes, Podcasts, Songs',
              packName: 'com.jio.media.jiobeats',
              imageurl:
                  "https://lh3.googleusercontent.com/FWHOs52Nk7BJi_FhwJFhuZpijl9L_A2GxwE7y62hhOeHNZUP5z2jrWgHp4tdKf8w06U=s360"),
          appCardIN(
              context: context,
              appName: 'Gaana',
              appDisc: 'Song Hotshots Video Music Hindi MP3 App',
              packName: 'com.gaana',
              imageurl:
                  "https://lh3.googleusercontent.com/vHw1Qv2MNAzoXiuJb8lNkybyHBzCsiWblKCefKnsukJlV9z4G0hGL_4uXzLUwxyT7a_q=s360"),
          appCardIN(
              context: context,
              appName: 'Wynk Music',
              appDisc: 'New Hindi Songs Download HelloTune',
              packName: 'com.bsbportal.music',
              imageurl:
                  "https://lh3.googleusercontent.com/WsLGolbognnEQ5OZyaQmwnPBRPqreFMbuyVemHEKQwgvBJBfupxigoecBydCXes4ciHS=s360"),
          appCard(
              context: context,
              appName: 'Apple Music',
              appDisc: 'Apple\'s Music App',
              packName: 'com.apple.android.music',
              imageurl:
                  "https://lh3.googleusercontent.com/WJ27HCRZBbpARv8Zus6TL8790nI-0-0UBUuMxniKIxJpqM7wVmxzaAj0tHOND4D5k6k=s360"),
          appCardIN(
              context: context,
              appName: 'Hungama Music',
              appDisc: 'Stream & Download MP3 Songs',
              packName: 'com.hungama.myplay.activity',
              imageurl:
                  "https://lh3.googleusercontent.com/oTUrtyjIUxN67zeA7te9KWI2Tb3c7P_Yfsdbl6eFGX92owUnMw0wJHDVHrVrfY6BgEk=s360"),
          appCard(
              context: context,
              appName: 'YouTube Music',
              appDisc: 'Stream Songs & Music Videos',
              packName: 'com.google.android.apps.youtube.music',
              imageurl:
                  "https://lh3.googleusercontent.com/GnYnNfKBr2nysHBYgYRCQtcv_RRNN0Sosn47F5ArKJu89DMR3_jHRAazoIVsPUoaMg=s360"),
          appCard(
              context: context,
              appName: 'Amazon Music',
              appDisc: 'Play & Download Trending Songs',
              packName: 'com.amazon.mp3',
              imageurl:
                  "https://lh3.googleusercontent.com/c0uMGe9aLRQxGtAXB_9xnKnG83VOGRD7NtglvnzPj9SYS3_ZYA_EYhtP86nePn0vjI0=s360"),
          appCard(
              context: context,
              appName: 'Google Play Music',
              appDisc: 'Google\'s Music App',
              packName: 'com.google.android.music',
              imageurl:
                  "https://lh3.googleusercontent.com/HQm_x5ZH-Y61Ca6Q8_TJLmkROyW4yso6DjRxqBaf3Y7yO1yfAyWkmyB5Cry5GNBx45PI=s360"),
          appCard(
              context: context,
              appName: 'SoundCloud',
              appDisc: 'Play Music, Audio & New Songs',
              packName: 'com.soundcloud.android',
              imageurl:
                  "https://lh3.googleusercontent.com/lvYCdrPNFU0Ar_lXln3JShoE-NaYF_V-DNlp4eLRZhUVkj00wAseSIm-60OoCKznpw=s360"),
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
