import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/highlight.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class HighlightsCards extends StatelessWidget {
  const HighlightsCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      'assets/images/our_work.jpg',
      'assets/images/semi_1.jpg'
    ];
    return Column(
      children: [
        WhoAreWe(
          text: 'أعمالنا',
          press: () {},
          buttonText: '',
        ),
        SizedBox(height: 20),
        Highlights(image: imgList)
      ],
    );
  }
}
