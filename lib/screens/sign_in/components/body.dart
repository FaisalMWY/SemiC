import 'package:flutter/material.dart';
import 'package:plant_app/components/no_account_text.dart';
import 'package:plant_app/components/socal_card.dart';

import 'sign_form.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: (20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 800 * 0.01),
                  Text(
                    "مرحبًا بك",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: (35),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway'),
                  ),
                  AspectRatio(
                    aspectRatio: 13 / 6,
                    child: Image.asset(
                      'assets/images/log_in_image.png',
                      height: (265),
                      width: (235),
                    ),
                  ),
                  // Text(
                  //   "سجل الدخول بالبريد الالكتروني ورمز المرور  \nأو عن طريق برامج التواصل الاجتماعي  ",
                  //   textAlign: TextAlign.center,
                  // ),
                  SignForm(),
                  SizedBox(height: 700 * 0.02),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SocalCard(
                  //         icon: "assets/icons/google-icon.svg", press: () {}),
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
                  SizedBox(height: (20)),
                  NoAccountText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
