import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/highlight.dart';
import 'package:plant_app/screens/features_and_services/components/plan_list.dart';
import 'package:plant_app/screens/features_and_services/components/service_list.dart';
import 'package:plant_app/screens/home/components/home_header.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class IdentityAndLogoPlans extends StatelessWidget {
  const IdentityAndLogoPlans({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Highlights(title: 'ابداع', press: () {}, quote: ''),
              SizedBox(height: 30),
              WhoAreWe(text: 'الباقات', press: () {}),
              SizedBox(height: 20),
              PlanList(),
            ],
          ),
        ),
      ),
    );
  }
}
