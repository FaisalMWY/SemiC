import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/highlight.dart';
import 'package:plant_app/screens/features_and_services/components/services/app_plans/plan_list.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class AppPlans extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/app_our_work.png',
    'assets/images/application.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
