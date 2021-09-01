//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class read extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Read and Write'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCard(
              context: context,
              appName: 'Quora',
              appDisc: 'Ask Questions, Get Answers',
              packName: 'com.quora.android',
              imageurl:
                  'https://lh3.googleusercontent.com/2FgK0PBW21nF8Nkp1j36BdOb5w7Df-Z1FJevfoD97JH7LTp0ZfacldQKJGpJeUl-qg=s360'),
          appCard(
              context: context,
              appName: 'Medium',
              appDisc: 'Reading',
              packName: 'com.medium.reader',
              imageurl:
                  'https://lh3.googleusercontent.com/qF9y0xIiYo_dk0JpryEl-lT2wJMDmz7groOBXqkalFg1SWPLklhuAUp0jIjoSLxDEi4=s360'),
          appCard(
              context: context,
              appName: 'Tumblr',
              appDisc: 'People and Interests',
              packName: 'com.tumblr',
              imageurl:
                  'https://lh3.googleusercontent.com/uKoPIVuYwLE4pJSsc7ouuiu7WviIIRJ_U3R1hT5nuCJ2mIVnWFimLjzs0uNhKrOtHDo=s360'),
          appCardIN(
              context: context,
              appName: 'Miraquill',
              appDisc: 'Formerly Mirakee | Write Quotes, Poems',
              packName: 'io.mi.ra.kee',
              imageurl:
                  'https://lh3.googleusercontent.com/sqeUbXBkKYfsNUxdjrx3Rfo32sqSAMIQEgFik33VhRHMgkjnbDXoyg8xXeyK5Yz3PGU=s360'),
          appCard(
              context: context,
              appName: 'Pinterest',
              appDisc: 'Lifestyle | Interests',
              packName: 'com.pinterest',
              imageurl:
                  'https://lh3.googleusercontent.com/dVsv8Hc4TOUeLFAahxR8KANg22W9dj2jBsTW1VHv3CV-5NCZjP9D9i2j5IpfVx2NTB8=s360'),
          appCard(
              context: context,
              appName: 'Scribd',
              appDisc: 'Audiobooks & ebooks',
              packName: 'com.scribd.app.reader0',
              imageurl:
                  'https://lh3.googleusercontent.com/QPXAvwU3VBLxxT-dwXs5MhxgMidt5zlIKR8gytIPffrC7iYH99H8VcfRQICHxSBS44U=s360'),
          appCard(
              context: context,
              appName: 'YourQuote',
              appDisc: 'Writing App',
              packName: 'in.yourquote.app',
              imageurl:
                  'https://lh3.googleusercontent.com/88J41_eIH5wogW1bPja_tsCySaQkg9E-w_KltDOdHKWJBNgXqcpoMHUIdOwwRsZxlcM=s360'),
          appCard(
              context: context,
              appName: 'WordPress',
              appDisc: 'Posts and Blogs',
              packName: 'org.wordpress.android',
              imageurl:
                  'https://lh3.googleusercontent.com/FKoZImII3S1CKxDwudC2k1EW8NMDi8FyWRk0_AufAQcixOd-kdll5H32L2lKvGIbVWIB=s360'),
          appCard(
              context: context,
              appName: 'Blogger',
              appDisc: 'Write Blogs',
              packName: 'com.google.android.apps.blogger',
              imageurl:
                  'https://lh3.googleusercontent.com/cWG9-bk2_zLdKsN9vsYEdbCReVfzgXU6FeHUmLI8a24FoZ05TpOLYXInCQ278FTwCw=s360'),
          appCard(
              context: context,
              appName: 'Goodreads',
              appDisc: 'Book Reviews and More',
              packName: 'com.goodreads',
              imageurl:
                  'https://lh3.googleusercontent.com/p0TzV6-CHE24ySIsC05vjGIS_PWaXIzE6Edzrw0VX7betQUtYY3FSFIKVjjMWJFXuj-u=s360'),
          appCard(
              context: context,
              appName: 'Amazon Kindle',
              appDisc: 'Read eBooks, comics & more',
              packName: 'com.amazon.kindle',
              imageurl:
                  'https://lh3.googleusercontent.com/HFQH-DmzwCzgtiUisd_S-mPbUE7bfXRDyXUBEIBrM9y_nHbmEoQXz94BBHErEyOmPg=s360'),
          appCard(
              context: context,
              appName: 'Google Play Books',
              appDisc: 'Ebooks, Audiobooks, and Comics',
              packName: 'com.google.android.apps.books',
              imageurl:
                  'https://lh3.googleusercontent.com/DglqS-eYHQYXnj8M8tmzh3JcKDXcidSo3IzgyCZzci8ZTV9Pmuk8vvIFh9XHOztC3Q=s360'),
          appCardIN(
              context: context,
              appName: 'Notojo',
              appDisc: 'Live Event, Shayari Poetry, Storytelling Video App',
              packName: 'com.nojoto.cinco',
              imageurl:
                  'https://lh3.googleusercontent.com/FbAkuCEBO83DRwzmocN40-nJ_T3_vpFhTLM_X_x3sAixeE3Eq7Xfgnd3-YZWrkp0sEVj=s360'),

//
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
