import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/my_account/components/body.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'حسابي',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Body(),
    );
  }
}
