import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/about_semi.dart';
import 'package:plant_app/screens/home/components/highlights_cards.dart';
import 'package:plant_app/screens/home/components/home_header.dart';
import 'package:plant_app/screens/home/components/icon_btn_with_counter.dart';
import 'package:plant_app/screens/home/components/highlights_card.dart';
import 'package:plant_app/screens/home/components/search_field.dart';
import 'package:plant_app/screens/home/components/services.dart';
import 'package:plant_app/screens/home/components/top_banner.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';
import '../home_screen.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 30),
            TopBanner(),
            SizedBox(height: 30),
            AboutSemi(),
            SizedBox(height: 30),
            Services(),
            SizedBox(height: 20),
            HighlightsCards(),
          ],
        ),
      ),
    );
  }

  void scrollUp() {
    final double start = 0;
    controller.animateTo(start,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
  }
}
