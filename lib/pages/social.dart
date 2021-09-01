// Finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Social and Messengers'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCard(
              context: context,
              appName: 'Twitter',
              appDisc: 'Share views and get viewed',
              packName: 'com.twitter.android',
              imageurl:
                  "https://lh3.googleusercontent.com/wIf3HtczQDjHzHuu7vezhqNs0zXAG85F7VmP7nhsTxO3OHegrVXlqIh_DWBYi86FTIGk=s360"),
          appCard(
              context: context,
              appName: 'Facebook',
              appDisc: 'Posts, Stories and Friends',
              packName: 'com.facebook.katana',
              imageurl:
                  "https://lh3.googleusercontent.com/UwKAdIulEU3eKrqbR5lTngf_D3NDennsPGzmmtS2-pIqdhYXs5D-TvT9htpVRIh6gQ=s360"),
          appCard(
              context: context,
              appName: 'Instagram',
              appDisc: 'Posts, Stories, Messaging and Reels',
              packName: 'com.instagram.android',
              imageurl:
                  "https://lh3.googleusercontent.com/c2DcVsBUhJb3UlAGABHwafpuhstHwORpVwWZ0RvWY7NPrgdtT2o4JRhcyO49ehhUNRca=s360"),
          appCard(
              context: context,
              appName: 'WhatsApp Messenger',
              appDisc: 'Messaging, Status and More',
              packName: 'com.whatsapp',
              imageurl:
                  "https://lh3.googleusercontent.com/bYtqbOcTYOlgc6gqZ2rwb8lptHuwlNE75zYJu6Bn076-hTmvd96HH-6v7S0YUAAJXoJN=s360"),
          appCard(
              context: context,
              appName: 'Telegram',
              appDisc: 'Messaging, sharing, channels and more',
              packName: 'org.telegram.messenger',
              imageurl:
                  "https://lh3.googleusercontent.com/ZU9cSsyIJZo6Oy7HTHiEPwZg0m2Crep-d5ZrfajqtsH-qgUXSqKpNA2FpPDTn-7qA5Q=s360"),
          appCard(
              context: context,
              appName: 'Snapchat',
              appDisc: 'Snaps, Filters and Friends',
              packName: 'com.snapchat.android',
              imageurl:
                  "https://lh3.googleusercontent.com/KxeSAjPTKliCErbivNiXrd6cTwfbqUJcbSRPe_IBVK_YmwckfMRS1VIHz-5cgT09yMo=s360"),
          appCard(
              context: context,
              appName: 'Tumblr',
              appDisc: 'Connect with People and Interests',
              packName: 'com.tumblr',
              imageurl:
                  "https://lh3.googleusercontent.com/jAqW1KpkF3zG0H_s5QnPE1v94JIHpmMoXm7oFnbgPOBDWX1SWEMFrwAExF0dey9Xgw=s360"),
          appCard(
              context: context,
              appName: 'LinkedIn',
              appDisc: 'Jobs, Business News & Social Networking',
              packName: 'om.linkedin.android',
              imageurl:
                  "https://lh3.googleusercontent.com/fqYJHtyzZzA4vacRzeJoB93QNvA5-mvR-8UB5oVLxdYDSTpfLp_KgYD4IqVGJUgFEJo=s360"),
          appCard(
              context: context,
              appName: 'Messenger',
              appDisc: 'By Facebook (Text and Video Chat)',
              packName: 'com.facebook.orca',
              imageurl:
                  "https://lh3.googleusercontent.com/rkBi-WHAI-dzkAIYjGBSMUToUoi6SWKoy9Fu7QybFb6KVOJweb51NNzokTtjod__MzA=s360"),
          appCard(
              context: context,
              appName: 'Pinterest',
              appDisc: 'Social and Lifestyle',
              packName: 'com.pinterest',
              imageurl:
                  "https://lh3.googleusercontent.com/dVsv8Hc4TOUeLFAahxR8KANg22W9dj2jBsTW1VHv3CV-5NCZjP9D9i2j5IpfVx2NTB8=s360"),
          appCard(
              context: context,
              appName: 'Flickr',
              appDisc: 'Community for Photographers',
              packName: 'com.flickr.android',
              imageurl:
                  "https://lh3.googleusercontent.com/ZLy4gmcB9cTvCz38vfuGqo0xNIHeIP2rUN7XPLcuEkX5dx6ykGdZ0l2yGna0DH-PhA=s360"),
          appCard(
              context: context,
              appName: 'Reddit',
              appDisc: 'Topics, Ideas, Communities',
              packName: 'com.reddit.frontpage',
              imageurl:
                  "https://lh3.googleusercontent.com/8Vw-7MAm558750a4M55fiOlUf7lP2cYnFuqSWynrygIiyEEiQQDa_xxHKYOX83L0UD2T=s360"),
          appCard(
              context: context,
              appName: 'Skype',
              appDisc: 'Instant Messages and Video Calls',
              packName: 'com.skype.raider',
              imageurl:
                  "https://lh3.googleusercontent.com/-Udh2Qv4FyhP2uLfvNy27jzzXrrIfnDEi9kUqzhy8OQgGUcWXXud6nlg8UywECiRmME=s360"),
          appCard(
              context: context,
              appName: 'Discord',
              appDisc: 'Talk, Video Chat & Hangout with Friends',
              packName: 'com.discord',
              imageurl:
                  "https://lh3.googleusercontent.com/_4zBNFjA8S9yjNB_ONwqBvxTvyXYdC7Nh1jYZ2x6YEcldBr2fyijdjM2J5EoVdTpnkA=s360"),
          appCard(
              context: context,
              appName: 'Azar',
              appDisc: 'Make Friends, Video Calls',
              packName: 'com.azarlive.android',
              imageurl:
                  "https://lh3.googleusercontent.com/UGnF6w2YBMtpoPs7sslQXbkNz7d_7yY0K_2iN4UpJMBm8SkoNQItXIzqs3oX4PuG97g=s360"),
          appCard(
              context: context,
              appName: 'Slack',
              appDisc: 'Communication and Management',
              packName: 'com.Slack',
              imageurl:
                  "https://lh3.googleusercontent.com/lV1DhBeSuikQy6fLPhgfNHUxDqterNlur4oB1Z_Yr0NOSiWwQOD0g8gWCjVf1mmMuw=s360"),
          appCard(
              context: context,
              appName: 'Elyments',
              appDisc: 'Social Media Simplified',
              packName: 'in.elyments.mobile',
              imageurl:
                  "https://lh3.googleusercontent.com/FOOXvgv9saQGjOGXO-f7E14MlZFt_TN9f_-XinBqMFOlNU8kNF5ftV-CsWX_WRySHkw=s360"),
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
