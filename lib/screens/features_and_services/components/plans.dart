import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/features_and_services/components/Identity_and_logo.dart';

class PlanList extends StatefulWidget {
  PlanList({
    Key key,
  }) : super(key: key);
  @override
  _PlanListState createState() => _PlanListState();
}

class _PlanListState extends State<PlanList> {
  int selectedPlan = 0;
  List<String> plans = [
    'باقات الشعار والهوية',
    'باقت التطبيقات',
    'باقات المواقع',
    'باقات سلة',
    'باقات التواصل الاجتماعي',
    'باقات التسويق'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: plans.length,
          itemBuilder: (context, index) => buildPlan(index, context),
        ),
      ),
    );
  }

  Padding buildPlan(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedPlan = index;
            print(selectedPlan);
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              plans[index],
              style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w600,
                  color: index == selectedPlan
                      ? Colors.black
                      : Colors.black.withOpacity(.4)),
            ),
            Container(
              height: 6,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedPlan
                    ? kSecondaryColor
                    : Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
