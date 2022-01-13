import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/highlight.dart';
import './plan_list.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class SocialMediaPlans extends StatelessWidget {
  const SocialMediaPlans({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/social_media_1.png',
      'assets/images/social_media.png'
    ];
    return Container(
      height: 520,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Highlights(
                image: imgList,
              ),
              SizedBox(height: 30),
              WhoAreWe(text: 'الباقات', press: () {}),
              PlanList(),
            ],
          ),
        ),
      ),
    );
  }
}
