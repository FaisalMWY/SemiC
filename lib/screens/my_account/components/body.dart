import 'package:flutter/material.dart';
import 'package:plant_app/screens/my_account/components/profile_edit.dart';

import 'package:plant_app/screens/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 30),
            ProfileEdit(),
          ],
        ),
      ),
    );
  }
}
// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(vertical: 20),
//         child: Column(
//           children: [
//             ProfilePic(),
//             SizedBox(height: 30),
//             ProfileEdit(),
//           ],
//         ),
//       ),
//     );
//   }
// }