import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text("سجل دخولك"),
      ),
      body: Body(),
    );
  }
}
