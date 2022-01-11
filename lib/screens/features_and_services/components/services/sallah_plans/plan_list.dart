import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/plan_cards.dart';

class PlanList extends StatelessWidget {
  const PlanList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanCards(
          title: 'انشاء متجرك في سلة',
          image: 'assets/images/semiksa_drawer.jpg',
          description: 'ننشئ متجرك في سلة مع اضافة المنتجات',
          press: () {},
        ),
        SizedBox(height: 20),
        PlanCards(
          title: 'إدارة متجرك في سلة',
          image: 'assets/images/semiksa_drawer.jpg',
          description: 'ندير متجرك مع ادارة امور الشحن والمنتجات',
          press: () {},
        ),
      ],
    );
  }
}
