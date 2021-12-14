import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/about_semi.dart';
import 'package:plant_app/screens/home/components/services.dart';
import 'package:plant_app/screens/home/components/top_banner.dart';
import 'package:flutter/widgets.dart';
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 240,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hoverColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            TopBanner(),
            SizedBox(height: 30),
            AboutSemi(),
            SizedBox(height: 30),
            Services(),
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
