import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';
import 'package:plant_app/screens/home/components/who_are_we_cards.dart';

class AboutSemi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WhoAreWe(
          text: 'Who are we?',
          buttonText: 'Learn more',
          press: () {},
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              WhoAreWeCards(
                  title: 'About Semi',
                  image: 'assets/images/semi_2.jpg',
                  press: () {}),
              WhoAreWeCards(
                  title: 'Semis\' Design',
                  image: 'assets/images/who_are_we_1.jpg',
                  press: () {}),
              WhoAreWeCards(
                  title: 'Semi\'s Identity',
                  image: 'assets/images/who_are_we_2.jpg',
                  press: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
