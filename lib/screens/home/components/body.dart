import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/underlined_title.dart';

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';
import '../home_screen.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;

    // it enable scrolling on small device
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(),
          // ListView(
          //   children: [
          //     buildCard('Who are we?'),
          //   ],
          // ),
          FeaturedPlants(),
          UnderlinedTitle(title: "Who are we", press: () {}),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'A passionate team that aims to empower entrepreneurs to start their e-commerce by providing several services consisting of a team with innovative technical and marketing expertise.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          UnderlinedTitle(title: "Our services", press: () {}),
          RecomendsPlants(),
          //UnderlinedTitle(title: "learn more in our website", press: () {}),

          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }

  void scrollUp() {
    final double start = 0;
    controller.animateTo(start,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
  }

  // Widget buildCard(String title) => Padding(
  //       padding: EdgeInsets.all(10),
  //       child: Card(
  //         child: ExpandablePanel(
  //           header: Text(
  //             title,
  //             style: TextStyle(fontWeight: FontWeight.bold),
  //           ),
  //           collapsed: Text('A passionate team that aims to '),
  //           expanded: Text(
  //             'A passionate team that aims to empower entrepreneurs to start their e-commerce by providing several services consisting of a team with innovative technical and marketing expertise.',
  //           ),
  //         ),
  //       ),
  //     );
}
