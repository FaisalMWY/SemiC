import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/services/app_plans.dart';
import 'package:plant_app/screens/features_and_services/components/services/identity_and_logo_plans.dart';
import 'package:plant_app/screens/features_and_services/components/services/marketing_plans.dart';
import 'package:plant_app/screens/features_and_services/components/services/sallah_plans.dart';
import 'package:plant_app/screens/features_and_services/components/services/social_media.dart';
import 'package:plant_app/screens/features_and_services/components/services/web_plans.dart';
import './service_list.dart';

class ServicesController extends StatefulWidget {
  const ServicesController({Key key}) : super(key: key);

  @override
  _ServicesControllerState createState() => _ServicesControllerState();
}

PageController pageController = PageController(initialPage: 0);
int pageChanged = 0;

class _ServicesControllerState extends State<ServicesController> {
  @override
  Widget build(BuildContext context) {
    if (pageChanged == 0) {
      selectedPlan = 0;
    } else if (pageChanged == 1) {
      selectedPlan = 1;
    } else if (pageChanged == 2) {
      selectedPlan = 2;
    } else if (pageChanged == 3) {
      selectedPlan = 3;
    } else if (pageChanged == 4) {
      selectedPlan = 4;
    } else if (pageChanged == 5) {
      selectedPlan = 5;
    }
    return Container(
      height: 700,
      child: PageView(
        reverse: true,
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            pageChanged = index;
            selectedPlan = index;
          });
          print(selectedPlan);
        },
        children: [
          IdentityAndLogoPlans(),
          AppPlans(),
          WebPlans(),
          SallahPlans(),
          SocialMediaPlans(),
          MarketingPlans(),
        ],
      ),
    );
  }
}
