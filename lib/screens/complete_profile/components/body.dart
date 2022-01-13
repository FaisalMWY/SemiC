import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: (20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 800 * 0.03),
                // Text("أكمال الملف الشخصي", style: headingStyle),
                AspectRatio(
                  aspectRatio: 2,
                  child: Image.asset(
                    'assets/images/complete_sign_up.png',
                  ),
                ),
                SizedBox(height: 800 * 0.01),
                CompleteProfileForm(),
                SizedBox(height: (10)),
                Text(
                  "بالأستمرار انت تقر على الموافقه\nعلى الشروط الأحكام",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
