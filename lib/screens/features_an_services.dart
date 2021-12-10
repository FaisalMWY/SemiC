import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/features_screens/App_dev.dart';
import 'package:plant_app/screens/features_screens/Identity_logo.dart';
import 'package:plant_app/screens/features_screens/Marketing.dart';
import 'package:plant_app/screens/features_screens/Sallah_management.dart';
import 'package:plant_app/screens/features_screens/Web_dev.dart';
import 'package:plant_app/screens/features_screens/social_network_management.dart';
import 'package:plant_app/screens/home/components/underlined_title.dart';

import 'home/components/featurred_plants.dart';
import 'home/components/header_with_seachbox.dart';
import 'home/components/recomend_plants.dart';
import 'home/components/title_with_more_bbtn.dart';
import 'home/home_screen.dart';

class FeaturesAndServices extends StatefulWidget {
  @override
  _FeaturesAndServicesState createState() => _FeaturesAndServicesState();
}

class _FeaturesAndServicesState extends State<FeaturesAndServices> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(),
          UnderlinedTitle(title: "Our features & services"),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
                "With semi; you can build your own application with a proficional team that will take care of services such as payment methods, dilevary sulotions, accounting and storage.",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TitleWithMoreBtn(
            title: "Application development",
            press: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => (AppDev()),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/app_our_work.png",
            press: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
                'Our application development team will assure that the required effeciensy and accuracy is being dilevered through the application',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TitleWithMoreBtn(
              title: "Web development",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => (WebDev()),
                  ),
                );
              }),
          FeaturePlantCard(
            image: "assets/images/web_1.png",
            press: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
                'With semi; you can build your own website with your touch with an expert web team as the team can easily implement services such as payment methods, dilevary sulotions, accounting and storage.',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TitleWithMoreBtn(
              title: "Marketing",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => (Marketing()),
                  ),
                );
              }),
          FeaturePlantCard(
            image: "assets/images/marketing.jpeg",
            press: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
                'with semi; we can implement marketing plans that help increase your selling rate while connecting your platforms to assure having the best marketing experience',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TitleWithMoreBtn(
              title: "Social Network Management",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => (SocialNetworksManagement()),
                  ),
                );
              }),
          FeaturePlantCard(
            image: "assets/images/social_media_management.png",
            press: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
                'Semi; can manage or and create accounts and applications of social media. ',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TitleWithMoreBtn(
              title: "Identity and logo design",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => (IdentityLogo()),
                  ),
                );
              }),
          FeaturePlantCard(
            image: "assets/images/identity_logo_d.png",
            press: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
                'With semi; you can create your own logo and/or identity design that is being implemented by our talnted group of artists',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TitleWithMoreBtn(
              title: "Managing salla account",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => (SallaManagement()),
                  ),
                );
              }),
          SizedBox(height: kDefaultPadding),
          FeaturePlantCard(
            image: "assets/images/salla_.png",
            press: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
                'with Semi; you can let us create and manage your salla store with a peace of mind',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
