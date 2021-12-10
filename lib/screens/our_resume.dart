import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'details/details_screen.dart';
import 'home/components/featurred_plants.dart';
import 'home/components/header_with_seachbox.dart';
import 'home/components/recomend_plants.dart';
import 'home/components/title_with_more_bbtn.dart';
import 'home/home_screen.dart';

class OurResume extends StatefulWidget {
  @override
  _OurResume createState() => _OurResume();
}

class _OurResume extends State<OurResume> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(),
          TitleWithMoreBtn(title: "Our applications", press: () {}),
          SingleChildScrollView(
            child: Row(
              children: [
                RecomendPlantCard(
                  image: "assets/images/app_our_work_2.jpg",
                  title: " ",
                  country: "  ",
                  // price: 1400,
                  press: () {},
                ),
                RecomendPlantCard(
                  image: "assets/images/app_2.png",
                  title: " ",
                  country: "  ",
                  // price: 1400,
                  press: () {},
                ),
              ],
            ),
          ),
          TitleWithMoreBtn(title: "Our websites", press: () {}),
          SingleChildScrollView(
            child: Row(
              children: [
                RecomendPlantCard(
                  image: "assets/images/web_3.jpg",
                  title: " ",
                  country: "  ",
                  // price: 1400,
                  press: () {},
                ),
                RecomendPlantCard(
                  image: "assets/images/web_4.jpeg",
                  title: " ",
                  country: "  ",
                  // price: 1400,
                  press: () {},
                ),
              ],
            ),
          ),
          TitleWithMoreBtn(title: "Our designs", press: () {}),
          SingleChildScrollView(
            child: Row(
              children: [
                RecomendPlantCard(
                  image: "assets/images/logo_design.png",
                  title: " ",
                  country: "  ",
                  // price: 1400,
                  press: () {},
                ),
                RecomendPlantCard(
                  image: "assets/images/identity_design.jpg",
                  title: " ",
                  country: "  ",
                  // price: 1400,
                  press: () {},
                ),
              ],
            ),
          ),
          TitleWithMoreBtn(title: "Photography", press: () {}),
          SingleChildScrollView(
            child: Row(
              children: [
                RecomendPlantCard(
                  image: "assets/images/photography_kit.jpeg",
                  title: " ",
                  country: "  ",
                  // price: 1400,
                  press: () {},
                ),
                RecomendPlantCard(
                  image: "assets/images/java.jpg",
                  title: " ",
                  country: "  ",
                  // price: 1400,
                  press: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
