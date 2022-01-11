import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/sign_in/sign_in_screen.dart';
import 'package:plant_app/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "لا تملك حساب؟",
            style: TextStyle(fontSize: 16),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            ),
            child: Text(" سجل معنا ",
                style: TextStyle(fontSize: 16, color: kPrimaryColor),
                textDirection: TextDirection.rtl),
          ),
          Text('او شرفنا'),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ),
            child: Text(" بضيافتك  ",
                style: TextStyle(fontSize: 16, color: kPrimaryColor),
                textDirection: TextDirection.rtl),
          ),
        ],
      ),
    );
  }
}
