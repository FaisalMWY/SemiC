import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

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
    'Identity & Logo Plans',
    'Application Plans',
    'Website Plans',
    'Salla Plans',
    'Social Media Plans',
    'Marketing Plans'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),

      height: 60,
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
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
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
