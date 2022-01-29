import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/features_and_services/components/highlight.dart';
import 'package:plant_app/screens/features_and_services/components/service_list.dart';
import './plan_list.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class MarketingPlans extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/marketing.jpg',
    'assets/images/marketing_1.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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


// Container(
//       height: 547,
//       child: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Highlights(
//                 image: imgList,
//               ),
//               SizedBox(height: 30),
//               WhoAreWe(text: 'الباقات', press: () {}),
              
//             ],
//           ),
//         ),
//       ),
//     );
// Center(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Container(
//                     width: 200,
//                     height: 200,
//                     color: kThirdColor,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(height: 5),
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Image.asset(
//                             'assets/images/semiksa_drawer.jpg',
//                             height: 70,
//                             width: 70,
//                           ),
//                         ),
//                         Text(
//                           'فصل باقتك معنا',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             height: 1.5,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Container(
//                             height: 4,
//                             width: 100,
//                             color: kSecondaryColor,
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         Center(
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 40),
//                             child: Text(
//                               'في قسم التسويق، نقدم لك فريق يتكفل في نشر مشروعك .',
//                               textDirection: TextDirection.rtl,
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )