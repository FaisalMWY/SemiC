import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/plan_cards.dart';

class PlanList extends StatelessWidget {
  const PlanList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanCards(
          title: '.فصل باقتك مع سيمي',
          image: 'assets/images/semiksa_drawer.jpg',
          description: 'في قسم التسويق، نقدم لك فريق يتكفل في نشر مشروعك .',
          press: () {},
        ),
      ],
    );
  }
}
