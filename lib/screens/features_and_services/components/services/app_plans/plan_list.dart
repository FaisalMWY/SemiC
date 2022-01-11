import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/plan_cards.dart';

class PlanList extends StatelessWidget {
  const PlanList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanCards(
          title: 'سيمي برو',
          image: 'assets/images/semiksa_drawer.jpg',
          description:
              'باقة تقدم لك امكانية بدأ تطبيقك بالشكل المطلوب والامكانيات المطلوبة',
          press: () {},
        ),
        SizedBox(height: 20),
        PlanCards(
          title: 'سيمي برو+',
          image: 'assets/images/semiksa_drawer.jpg',
          description: 'بافة تقدم لك تطبيقك بشكل متكامل من حيث التصميم والجودة',
          press: () {},
        ),
      ],
    );
  }
}
