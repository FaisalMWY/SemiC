import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/highlight.dart';
import './plan_list.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class SallahPlans extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/sallah.jpg',
    'assets/images/sallah_1.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
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
