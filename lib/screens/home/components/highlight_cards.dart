import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/highlight.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class HighlightsCards extends StatelessWidget {
  const HighlightsCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WhoAreWe(
          text: 'Highlights',
          press: () {},
          buttonText: 'Our Work',
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Highlights(
                  title: 'Upto 50% discount on our plans!',
                  image: 'assets/images/semi_1.jpg',
                  quote: '',
                  press: () {}),
              Highlights(
                  title: 'Identity Design',
                  image: 'assets/images/our_work.jpg',
                  quote: '',
                  press: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
