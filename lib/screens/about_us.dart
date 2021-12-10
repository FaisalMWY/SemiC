import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/underlined_title.dart';
import 'package:plant_app/screens/home/home_screen.dart';

import 'home/components/featurred_plants.dart';
import 'home/components/header_with_seachbox.dart';
import 'home/components/title_with_more_bbtn.dart';
import './home/home_screen.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(),
          UnderlinedTitle(title: "About us", press: () {}),
          FeaturePlantCard(
            image: "assets/images/about_us.jpg",
            press: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              '\n   Simi is a Saudi entity founded in 2021. It is a creative design, digital programming and marketing agency that innovates user experiences across the web, e-commerce and mobile applications, and offers many marketing solutions through a passionate team that aims to empower entrepreneurs to start their e-commerce, provide aesthetics, develop new concepts, and make design Creative again with a team of professionals in various fields with the aim of developing services provided by individuals, institutions and companies in the field of design.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
