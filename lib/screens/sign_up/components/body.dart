import 'package:flutter/material.dart';
import 'package:plant_app/components/socal_card.dart';
import 'package:plant_app/constants.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: (30)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 800 * 0.01), // 1%
                  // Text("التسجيل", style: headingStyle),
                  AspectRatio(
                    aspectRatio: 2,
                    child: Image.asset(
                      'assets/images/sign_up.png',
                    ),
                  ),
                  SizedBox(height: 800 * 0.01),
                  SignUpForm(),
                  SizedBox(height: 800 * 0.03),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SocalCard(
                  //       icon: "assets/icons/google-icon.svg",
                  //       press: () {},
                  //     ),
                  //     SocalCard(
                  //       icon: "assets/icons/facebook-2.svg",
                  //       press: () {},
                  //     ),
                  //     SocalCard(
                  //       icon: "assets/icons/twitter.svg",
                  //       press: () {},
                  //     ),
                  //   ],
                  // ),

                  Text(
                    'بالأستمرار انت تقر على الموافقه\nعلى الشروط الأحكام',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
