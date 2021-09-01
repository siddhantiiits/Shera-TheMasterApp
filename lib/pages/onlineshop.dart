//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class onlineshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Online Shopping'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCard(
              context: context,
              appName: 'Amazon',
              appDisc: 'Shopping',
              packName: 'in.amazon.mShop.android.shopping',
              imageurl:
                  'https://lh3.googleusercontent.com/TpxeOgptQworHjromT4yoo05oHk72dSE0pVQowPfb3u3rozTwLjYUHxTpEzIYMemomQ=s360'),
          appCardIN(
              context: context,
              appName: 'Flipkart',
              appDisc: 'Online Shopping App',
              packName: 'com.flipkart.android',
              imageurl:
                  'https://lh3.googleusercontent.com/q8hxnbpJCYfHipSOG_5tZe5jK_89T6QIsqrEklvGpMFKH8b98pDHJf2tPcn2bxEN96ON=s360'),
          appCardIN(
              context: context,
              appName: 'Myntra',
              appDisc: 'Shop Fashion & more',
              packName: 'com.myntra.android',
              imageurl:
                  'https://lh3.googleusercontent.com/G87iT9dhwxwtgl5UA8SIqwp7I0GTlItyuR5mNL7vUOgP2SN8JyXigaiOpxKRaCXI22w=s360'),
          appCardIN(
              context: context,
              appName: 'JioMart',
              appDisc: 'Official App: Easy Online Shopping',
              packName: 'com.jpl.jiomart',
              imageurl:
                  'https://lh3.googleusercontent.com/qS_rE_kMQSEs_7ZZkzuZNUbRGxif7np1TxOJsv0lsnGKjFQ3cf1d6mp3BMKCcvxWCFY=s360'),
          appCardIN(
              context: context,
              appName: 'Snapdeal',
              appDisc: 'Online Shopping App',
              packName: 'com.snapdeal.main',
              imageurl:
                  'https://lh3.googleusercontent.com/YcLEfRv7PpnwEuRXP1g9jFd6oRGXngLq74BSWQQj7pyigjvzZv32APRSG-KlRVE2gig=s360'),
          appCardIN(
              context: context,
              appName: 'Lenskart',
              appDisc: 'Eyeglasses, Sunglasses, Contact Lens App',
              packName: 'com.lenskart.app',
              imageurl:
                  'https://lh3.googleusercontent.com/wPGVqEoS2gtvGLHPaifWXPy53S-5-zjq_Cl5YBhpAVQ_FtQ0gicsKmOCgQrg1yQIzus=s360'),
          appCardIN(
              context: context,
              appName: 'CaratLane',
              appDisc: 'A Tanishq Partnership - Buy Jewellery',
              packName: 'com.caratlane.android',
              imageurl:
                  'https://lh3.googleusercontent.com/h4ABwk4rLx86prrTW1kxjNcSzfnwlHsxvmyT2zvCKZAyxwS8dTxURAe3stINvKhh1HVo=s360'),
          appCardIN(
              context: context,
              appName: 'Nykaa',
              appDisc: 'Beauty Shopping App. Buy Makeup & Cosmetics',
              packName: 'com.fsn.nykaa',
              imageurl:
                  'https://lh3.googleusercontent.com/RllZf42XounX60rftJqa0K3EfoCMmzGqdOgbZvtQiPETcOVaes8cw1bEeBhW7UGeNb0=s360'),
          appCardIN(
              context: context,
              appName: 'FirstCry India',
              appDisc: 'Baby & Kids Shopping & Parenting',
              packName: 'fc.admin.fcexpressadmin',
              imageurl:
                  'https://lh3.googleusercontent.com/MnuZ2c-iJgXdlyjs1lMAzBR6meMfkSBmPAebq9LGnVi83NNGpd0dPMGS5sJQS_EO_w=s360'),
          appCardIN(
              context: context,
              appName: 'Pepperfry',
              appDisc: 'Online Furniture Store',
              packName: 'com.app.pepperfry',
              imageurl:
                  'https://lh3.googleusercontent.com/DRUl_Itt6wKtdfGRAOuSRHaXz9pVhNEgS1C-f2jylSbDMZxh_PNyRO2ZdnY-kCcznnoC=s360'),
          appCardIN(
              context: context,
              appName: 'AJIO',
              appDisc: 'Online Shopping App',
              packName: 'com.ril.ajio',
              imageurl:
                  'https://lh3.googleusercontent.com/RWNQyHoMPJ-Z8ApQhQchXsfoBXrj3By1cf49GPRK6-hYiIv0RL6Z1fdZl1OAUpqHCB8=s360'),
          appCardIN(
              context: context,
              appName: 'Bewakoof',
              appDisc: 'Online Fashion Shopping App',
              packName: 'com.bewakoof.bewakoof',
              imageurl:
                  'https://lh3.googleusercontent.com/tVHQI9bmkkLJ26smc3_riLyCMscXmLM5wc9ITicb1Njb1UOM9q7-SfrtWYSEUQo9x8o=s360'),
          appCard(
              context: context,
              appName: 'OLX',
              appDisc: 'Buy & Sell Near You with Online Classifieds',
              packName: 'com.olx.southasia',
              imageurl:
                  'https://lh3.googleusercontent.com/tYdcwxICaq7q-Qe_jmQ-2YIMfZ011Tap8PtWLOOpLx23LJLvqr_YziUqek9nBEdVJE8=s360'),
          appCardIN(
              context: context,
              appName: 'Quikr',
              appDisc: 'Search Jobs, Mobiles, Cars, Home Services',
              packName: 'com.quikr',
              imageurl:
                  'https://lh3.googleusercontent.com/l5vy1ANtkBFog57kFEGOtPKYH7HDhnUFePivRBa3LbyzgqohMGEMfQOkYCRu-gQgRQ=s360'),
          appCardIN(
              context: context,
              appName: 'Paytm Mall',
              appDisc: 'Online Shopping App, Buy Fastag',
              packName: 'com.paytmmall',
              imageurl:
                  'https://lh3.googleusercontent.com/7NwF3V-2xx4xRmMRbGXjdCeK7UMJ2D-BmZnGgGMEsbGcR-J1rc3W6BaboH-TuSh6hA=s360'),
          appCardIN(
              context: context,
              appName: 'Zivame',
              appDisc: 'Shop Lingerie, Activewear, Apparel Online',
              packName: 'com.zivame.consumer',
              imageurl:
                  'https://lh3.googleusercontent.com/tuTJ47aasC_wt0v3cFORr0aCjPVAohJDDtDXjdYVDpvZs-1RVXFnkBwa6X_OpqH2ig2w=s360'),
//
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
