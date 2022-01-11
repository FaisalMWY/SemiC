import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/plan_cards.dart';

class PlanList extends StatelessWidget {
  const PlanList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanCards(
          title: 'سيمي بيسك',
          image: 'assets/images/semiksa_drawer.jpg',
          description:
              'ننشئ و ندير حسابات التواصل الاجتماعي مع ادارة حملات اعلانية',
          press: () {},
        ),
        SizedBox(height: 20),
        PlanCards(
          title: 'سيمي برو',
          image: 'assets/images/semiksa_drawer.jpg',
          description:
              'ننشئ و ندير حسابات التواصل الاجتماعي مع ادارة حملات اعلانية و تكوين حساب  واتساب برو',
          press: () {},
        ),
        SizedBox(height: 20),
        PlanCards(
          title: '+سيمي برو',
          image: 'assets/images/semiksa_drawer.jpg',
          description:
              'ادارة حسابات تواصل اجماعي  مع بناء ملف لينكد ان و انشاء رابط شامل',
          press: () {},
        ),
      ],
    );
  }
}
