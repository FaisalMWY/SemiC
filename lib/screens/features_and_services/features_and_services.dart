import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/highlight.dart';
import 'package:plant_app/screens/features_and_services/components/plans.dart';
import 'package:plant_app/screens/features_and_services/components/plan_cards.dart';
import 'package:plant_app/screens/features_and_services/components/social_media.dart';
import 'package:plant_app/screens/features_and_services/components/social_media_cards.dart';
import 'package:plant_app/screens/features_and_services/components/team_quersks.dart';
//import 'package:plant_app/screens/features_and_services/components/features_header.dart';

import 'package:plant_app/screens/home/components/home_header.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class FeaturesAndServices extends StatelessWidget {
  const FeaturesAndServices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              HomeHeader(),
              SizedBox(height: 30),
              PlanList(),
              Highlights(title: 'ابداع', press: () {}, quote: ''),
              SizedBox(height: 30),
              WhoAreWe(text: 'الباقات', press: () {}),
              SizedBox(height: 20),
              Column(
                children: [
                  PlanCards(
                    title: 'سيمي بيسك',
                    image: 'assets/images/semiksa_drawer.jpg',
                    description: 'باقة تقدم لك تصميم ابداعي باقل تكلفة',
                    press: () {},
                  ),
                  SizedBox(height: 20),
                  PlanCards(
                    title: 'سيمي برو',
                    image: 'assets/images/semiksa_drawer.jpg',
                    description: 'باقة تقدم لك تصميم اكثر تناسقًا مع رغباتك',
                    press: () {},
                  ),
                  SizedBox(height: 20),
                  PlanCards(
                    title: '+سيمي برو',
                    image: 'assets/images/semiksa_drawer.jpg',
                    description: 'بافة تقدم لك تصميم ابداعي ورائع',
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
