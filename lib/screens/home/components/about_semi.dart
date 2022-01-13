import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/service_list.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';
import 'package:plant_app/screens/home/components/who_are_we_cards.dart';

class AboutSemi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> titleList = [
      'Semi\'s Identity',
      'Semis\' Design',
      'About Semi'
    ];
    final List<String> imgList = [
      'assets/images/who_are_we_2.jpg',
      'assets/images/who_are_we_1.jpg',
      'assets/images/semi_2.jpg'
    ];
    return Column(
      children: [
        WhoAreWe(
          text: 'من نحن؟',
          buttonText: '',
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
        WhoAreWeCards(title: titleList, image: imgList, press: () {}),
      ],
    );
  }
}
