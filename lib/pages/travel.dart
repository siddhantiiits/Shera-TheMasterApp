//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class travelApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Travelling and Local'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCardIN(
              context: context,
              appName: 'MakeMyTrip',
              appDisc: 'Flight Hotel Bus Cab IRCTC Rail Booking',
              packName: 'com.makemytrip',
              imageurl:
                  'https://lh3.googleusercontent.com/1llAcleLs0UDr5ysUl_C4aHM-vN70HGTy7gjlM78SLsPCOijj7oosBLQc26G2daqOg=s360'),
          appCardIN(
              context: context,
              appName: 'OYO',
              appDisc: 'Hotel Booking',
              packName: 'com.oyo.consumer',
              imageurl:
                  'https://lh3.googleusercontent.com/hXpVzlM5gVL6hMCLacy3Y9zd2ecDVlU7TsHgSDB1R9u8OjUCUJ1bCrsUsT4bP-PyCSo=s360'),
          appCardIN(
              context: context,
              appName: 'redBus',
              appDisc: 'Online Bus Booking App',
              packName: 'in.redbus.android',
              imageurl:
                  'https://lh3.googleusercontent.com/5ZxVI65M9_yQQHgsY2f_lvSFD9E4Oqvfgxkg-E-MZwWt1M65-6HLY3twREAubQtZqqo=s360'),
          appCardIN(
              context: context,
              appName: 'Ola',
              appDisc: 'Get rides on-demand',
              packName: 'com.olacabs.customer',
              imageurl:
                  'https://lh3.googleusercontent.com/4rrRCFJo4GSxHBON0M8OIwKNfT6b5zOA20fMniJKaeU3CUylFA9i6vazeazxKwZU6Ng=s360'),
          appCardIN(
              context: context,
              appName: 'IRCTC',
              appDisc: 'Official Rail Booking App',
              packName: 'cris.org.in.prs.ima',
              imageurl:
                  'https://lh3.googleusercontent.com/W-dIYizhlZulse5gtu7IDhTHgFW7DrDMJy-o5T0FdPBI4k4MY2aDW1MAfMcZZVwUtQ=s360'),
          appCard(
              context: context,
              appName: 'trivago',
              appDisc: 'Compare hotel prices',
              packName: 'com.trivago',
              imageurl:
                  'https://lh3.googleusercontent.com/C0gdwkwRgeWwtBRklQBD8XMd7ctEVuQweHscdmXIY9JWX-0NvPcpnxDcmz-m0II08mmO=s360'),
          appCard(
              context: context,
              appName: 'Uber',
              appDisc: 'Request a ride',
              packName: 'com.ubercab',
              imageurl:
                  'https://lh3.googleusercontent.com/qy_wZ92sFQccojEtscg52vtdAQmCIeQ4jsybMPmuML9Or7_SEOyrt0Jn0wyG-l2Fyw=s360'),
          appCardIN(
              context: context,
              appName: 'Goibibo',
              appDisc: 'Hotel Car Flight IRCTC Train Bus Booking',
              packName: 'com.goibibo',
              imageurl:
                  'https://lh3.googleusercontent.com/tBgDkTPpodjVh4OYlMgrmxRUY4PZuuJUiD4F4IqsqlCfAA5YScwpd3LjUyVmfyfH3A=s360'),
          appCard(
              context: context,
              appName: 'Tripadvisor',
              appDisc: 'Hotels Flights Restaurants',
              packName: 'com.tripadvisor.tripadvisor',
              imageurl:
                  'https://lh3.googleusercontent.com/Mt-VdXVeAT3Wf9k_gMGLk21isff-mL-WWGn2Rn9T6mh-2ctS-vewl8Fh1m4ZZbKITg=s360'),
          appCardIN(
              context: context,
              appName: 'Yatra',
              appDisc: 'Flights, Hotels, Bus, Trains & Cabs',
              packName: 'com.yatra.base',
              imageurl:
                  'https://lh3.googleusercontent.com/y7dgnim86HoE4LgjChguLbohs-h8OyJRz_StVX717JXDhVBtd5phMtuEDCfZrBAjlUc=s360'),
          appCardIN(
              context: context,
              appName: 'Zoomcar',
              appDisc: 'Self-drive car rental service',
              packName: 'com.zoomcar',
              imageurl:
                  'https://lh3.googleusercontent.com/9wm9e3TW3AJvGDLGRz0bXJfnfhidfKvHxiKZroMnciGTHh6ZFiQ3cIToSk6bKGPIKA=s360'),
          appCardIN(
              context: context,
              appName: 'Air India',
              appDisc: 'Flight Booking',
              packName: 'com.bets.airindia.ui',
              imageurl:
                  'https://lh3.googleusercontent.com/AVcvRbkNrd8Tq3ZmEHoOnqYCtBbGmhyQ8ZYCcGBczDX8qxI_143o-ZtB-W_j0E-waut5=s360'),
          appCard(
              context: context,
              appName: 'Cleartrip',
              appDisc: 'Flights, Hotels, Train Booking App',
              packName: 'com.cleartrip.android',
              imageurl:
                  'https://lh3.googleusercontent.com/7ZvV_rvhQ1L0PRW7t5BqEzslXy1AFFqI76B43hQyvt7KKECuO80EsCwptR6YBYjX-rI=s360'),
          appCardIN(
              context: context,
              appName: 'IndiGo',
              appDisc: 'Flight Booking',
              packName: 'in.goindigo.android',
              imageurl:
                  'https://lh3.googleusercontent.com/OhZSLjRDLvFLqtDp9bIgcvAweZIg5V5uIMI_7kOaS-9nPR043DUfoibkn1BgwG7Ai1U=s360'),
          appCardIN(
              context: context,
              appName: 'Vistara',
              appDisc: 'Flight Booking',
              packName: 'com.vistara.tsal',
              imageurl:
                  'https://lh3.googleusercontent.com/E_SwrB7iPlTB53XBwlrgNsWPM_JhJ8DPK60Ht_RDHLkim_FIGF558LPA7QXw4ksWYEU=s360'),
          appCardIN(
              context: context,
              appName: 'Rail Yatri',
              appDisc: 'Live Train Spotting, PNR, Booking',
              packName: 'com.railyatri.in.mobile',
              imageurl:
                  'https://lh3.googleusercontent.com/LETweCtJAGZKFDqmmDGqezvu33IDnENNJNLEPnOYdJR_T8j642jivSl9tIoKaGEn-w=s360'),
          appCardIN(
              context: context,
              appName: 'Meru Cabs',
              appDisc: 'Local, Rental, Outstation, Airport Taxi',
              packName: 'com.winit.merucab',
              imageurl:
                  'https://lh3.googleusercontent.com/DfPFVjhz8QLBLttUxNXWnaZGxy033gdcjnXR029T2_xk4WOwehYUnh2I8qHlImvJc8-h=s360'),
          appCardIN(
              context: context,
              appName: 'SpiceJet',
              appDisc: 'Flight Booking',
              packName: 'com.vl.spicejet',
              imageurl:
                  'https://lh3.googleusercontent.com/GpBflSe4aTVUKcoM7xVVk0gVMEETdYF3Y_r5cNuwKDFRjnbCdpxW9m-GtyzFueCR2ODK=s360'),
          appCard(
              context: context,
              appName: 'AirAsia',
              appDisc: 'Flight Booking',
              packName: 'com.airasia.mobile',
              imageurl:
                  'https://lh3.googleusercontent.com/g6et5tThom-a2x8ySitnHgvHXSBh65E1_1ifp10o1bBYi-ltyXmhLmHEuK5JSaKNGg=s360'),

//
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
