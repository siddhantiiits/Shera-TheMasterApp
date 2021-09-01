//finalised
import 'package:flutter/material.dart';
import 'package:the_master_app/func.dart';

class jobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1('Jobs'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),

          appCardIN(
              context: context,
              appName: 'Naukri.com',
              appDisc: 'Job Search App: Search jobs on the go!',
              packName: 'naukriApp.appModules.login',
              imageurl:
                  'https://lh3.googleusercontent.com/n_2OvXGMCLjuxrpE82CitXL_99bKg-jsRl60MW1NwMVAHgK_-stNBJyn-AjMD83qmZU=s360'),
          appCard(
              context: context,
              appName: 'Monster',
              appDisc: 'Job Search & Career Opportunities App',
              packName: 'com.monsterindia.seeker.views',
              imageurl:
                  'https://lh3.googleusercontent.com/1kJygXRdW7PuBmMiWOGHy7c9QbeJ56eNcaNYdQviXi5xtI9ZF3gFIjLmhQTZG2CwpqX2=s360'),
          appCardIN(
              context: context,
              appName: 'Just Jobs',
              appDisc: 'Search Jobs in India',
              packName: 'com.just.jobs',
              imageurl:
                  'https://lh3.googleusercontent.com/dCNxvrR2yxrowMktospU2Q_OOWFsx-LPAQnzDaLdpyN25F3exPM4OyK4llQHg4COfIo=s360'),
          appCard(
              context: context,
              appName: 'Indeed',
              appDisc: 'Job Search',
              packName: 'com.indeed.android.jobsearch',
              imageurl:
                  'https://lh3.googleusercontent.com/jj2z8DZ-Z5rV-Y4IY0ZklkuPjCchjeeisflFD0dU_zlJNpbUJkDTQpAMlc5rwutKFSU=s360'),
          appCard(
              context: context,
              appName: 'Glassdoor',
              appDisc: 'Job search, company reviews & salaries',
              packName: 'com.glassdoor.app',
              imageurl:
                  'https://lh3.googleusercontent.com/lDHCg7UucsvMg6aiT-Gddk-flkeuRCy6j6dNjmIvsW0eQCKtHcKosw4nxPXRnhnXufmn=s360'),
          appCardIN(
              context: context,
              appName: 'Internshala',
              appDisc: 'Internship Search App for Students',
              packName: 'com.internshala.app',
              imageurl:
                  "https://lh3.googleusercontent.com/eKLF0eUauUmESo3O-s43L-9eGD5ofuV0iVTXbOvcYINMntu4l5SNbMTAZa84gAvznQ=s360"),

          appCard(
              context: context,
              appName: 'Upwork',
              appDisc: 'For Freelancers',
              packName: 'com.upwork.android.apps.main',
              imageurl:
                  "https://lh3.googleusercontent.com/E-zu1zt0IS3HxP4H2tkbFrKtqWHPYxyd8uNJYXHhbFaDV7H0zow7AQ6TS_MdTsjQVCMg=s360"),
          appCard(
              context: context,
              appName: 'Freelancer',
              appDisc: 'Hire & Find Jobs',
              packName: 'com.freelancer.android.messenger',
              imageurl:
                  "https://lh3.googleusercontent.com/EXMdy4ai6HHl_Ze8vxC7pdQzfS0HFiZ70F2IdPq_VuYropTkrUFyPPlftbPKEbhISg=s360"),
          appCard(
              context: context,
              appName: 'Truelancer',
              appDisc: 'Job Search, Hire Freelancer',
              packName: 'com.truelancer.app',
              imageurl:
                  "https://lh3.googleusercontent.com/gzSnjyQyVnPzO59xKK7m1ZniE23yvZap9bVC__ba6OxpBJcrUP-lkuBR90j3EiRZ-2U=s360"),
          appCardIN(
              context: context,
              appName: 'Letsintern',
              appDisc: 'Internships on tap',
              packName: 'com.letsintern.droid',
              imageurl:
                  "https://lh3.googleusercontent.com/rB2TwHziXB8v2U95c9FHItvG-Pq9bEpj1uFutt2Sngb1ouOtF-_45Pi0jVYmnHrTLA=s360"),

//
        ],
      ),
      bottomNavigationBar: footer1(),
    );
  }
}
