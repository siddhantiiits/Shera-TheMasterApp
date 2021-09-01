// Finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class wallets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Wallets and Banks'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          appCardIN(
              context: context,
              appName: 'Google Pay (Tez)',
              appDisc: 'Simple and Secure Payment App',
              packName: 'com.google.android.apps.nbu.paisa.user',
              imageurl:
                  "https://lh3.googleusercontent.com/AeMKuV3iGZsHPeSU_g13oYW0msutmjt3QiEbJvTiMh6dqFvyeTS-LHVs4Sa0d9q7RElI=s360"),
          appCardIN(
              context: context,
              appName: 'Paytm',
              appDisc: 'Mobile Recharge, UPI Payments & Bank App',
              packName: 'net.one97.paytm',
              imageurl:
                  "https://lh3.googleusercontent.com/k7yz57K2OxhNrPNKF2U18Zcv9rodOu7CfWh47U15FFUN8-_B0hQfXsM-BaLG0gOtvw=s360"),
          appCardIN(
              context: context,
              appName: 'BHIM',
              appDisc: 'Making India Cashless',
              packName: 'in.org.npci.upiapp',
              imageurl:
                  "https://lh3.googleusercontent.com/B5cNBA15IxjCT-8UTXEWgiPcGkJ1C07iHKwm2Hbs8xR3PnJvZ0swTag3abdC_Fj5OfnP=s360"),
          appCardIN(
              context: context,
              appName: 'PhonePe', // indian
              appDisc: 'UPI Payments, Recharges & Money Transfer',
              packName: 'com.phonepe.app',
              imageurl:
                  "https://lh3.googleusercontent.com/6iyA2zVz5PyyMjK5SIxdUhrb7oh9cYVXJ93q6DZkmx07Er1o90PXYeo6mzL4VC2Gj9s=s360"),
          appCardIN(
              context: context,
              appName: 'Oxigen Wallet',
              appDisc: 'Bill Payment & Recharge,Wallet',
              packName: 'com.oxigen.oxigenwallet',
              imageurl:
                  "https://lh3.googleusercontent.com/sgHF1CbC7MES00Wfyw13Nix7NxlgdLf1DkX1dhXOhLYFlfdY2Ff1qPVqI2egT-m6DpA=s360"),
          appCardIN(
              context: context,
              appName: 'MobiKwik',
              appDisc: 'BHIM UPI, Money Transfer, Recharge & Bill Payment',
              packName: 'com.mobikwik_new',
              imageurl:
                  "https://lh3.googleusercontent.com/Z-CLxC6OsxdyAco2WQjAJ2HR-xBQXuyi8arpnHUgwpkBhhRMXiuNWJWxmCY_ojzTHxQ=s360"),
          appCardIN(
              context: context,
              appName: 'Ola Money',
              appDisc: 'Mobile Recharge, UPI Payments & Bank App',
              packName: 'com.olacabs.olamoney',
              imageurl:
                  "https://lh3.googleusercontent.com/duEfVHWalp_TObDBEPzb4H7akx15eNbSQOPqdTxwYK5tsyfPgGIrWqNOUO96vwGNtFM=s360"),
          appCardIN(
              context: context,
              appName: 'Freecharge',
              appDisc: 'Recharges & Bills, Mutual Funds, UPI',
              packName: 'com.freecharge.android',
              imageurl:
                  "https://lh3.googleusercontent.com/9MgLa0ekOqhj_OosRcJis7O6Y20ckxK7T0gMnIQ2fnhauoT-UZSJqHk2uRoED2eeOA=s360"),
          appCardIN(
              context: context,
              appName: 'Bajaj Finserv Wallet',
              appDisc: 'Recharges,Payments,Transfers',
              packName: 'om.mobikwik_new.bajajfinserv',
              imageurl:
                  "https://lh3.googleusercontent.com/nP_DCkllgWwLCkIZzHh1-rPca3esOX_A1wjMtyNB6dwXII8N9k2nFm9DoPScZ8VNCDI=s360"),
          appCard(
              context: context,
              appName: 'Amazon',
              appDisc: 'Shopping, UPI, Money Transfer, Bill Payment',
              packName: 'in.amazon.mShop.android.shopping',
              imageurl:
                  "https://lh3.googleusercontent.com/TpxeOgptQworHjromT4yoo05oHk72dSE0pVQowPfb3u3rozTwLjYUHxTpEzIYMemomQ=s360"),
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
