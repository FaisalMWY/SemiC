import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/features_and_services/components/services/identity_and_logo_plans.dart';

class ServiceList extends StatefulWidget {
  ServiceList({
    Key key,
  }) : super(key: key);
  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  int selectedPlan = 0;
  List<String> plans = [
    'باقات الشعار والهوية',
    'باقات التطبيقات',
    'باقات المواقع',
    'باقات سلة',
    'باقات التواصل الاجتماعي',
    'باقات التسويق'
  ];

  @override
  Widget build(BuildContext context) {
    var container;

    if (selectedPlan == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => IdentityAndLogoPlans(),
        ),
      );
    } else if (selectedPlan == 1) {
      // container = AboutUs();
    } else if (selectedPlan == 2) {
      // container = FeaturesAndServices();
    } else if (selectedPlan == 3) {
      // container = OurResume();
    } else if (selectedPlan == 4) {
      // container = ContactUs();
    } else if (selectedPlan == 5) {
      // container = ContactUs();
    }
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
