import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/plans.dart';
import 'package:plant_app/screens/features_and_services/components/social_media_cards.dart';
//import 'package:plant_app/screens/features_and_services/components/features_header.dart';

import 'package:plant_app/screens/home/components/home_header.dart';

class FeaturesAndServices extends StatelessWidget {
  const FeaturesAndServices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              HomeHeader(),
              SizedBox(height: 30),
              PlanList(),
              SizedBox(height: 30),
              SocialMediaCards(),
            ],
          ),
        ),
      ),
    );
  }
}
