import 'package:flutter/material.dart';
import 'package:plant_app/screens/Notifications/notifications_screen.dart';
import 'package:plant_app/screens/my_account/my_account_screen.dart';
import 'package:plant_app/screens/splash/splash_screen.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            // ProfilePic(),
            // SizedBox(height: 20),
            // ProfileMenu(
            //   text: "حسابي",
            //   icon: "assets/icons/User Icon.svg",
            //   press: () => {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => MyAccountScreen()),
            //     )
            //   },
            // ),
            ProfileMenu(
              text: "التنبيهات",
              icon: "assets/icons/Bell.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationsScreen()),
                );
              },
            ),
            ProfileMenu(
              text: "تسجيل خروج",
              icon: "assets/icons/Log out.svg",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
