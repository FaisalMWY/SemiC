import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        //color: kPrimaryColor,
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                image: DecorationImage(
                    image: AssetImage('assets/images/semi.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(

                    // bottomLeft: Radius.circular(36),
                    // bottomRight: Radius.circular(36),
                    ),
              ),
              margin: EdgeInsets.only(bottom: 10),
              height: 170,
              // decoration: BoxDecoration(
              //   shape: BoxShape.circle,
              //image: DecorationImage(
              // (Fiverr): Wrong asset call
              //image: AssetImage('assets/images/semi_1.png'),
              // ),
            ),
            // ),
            // Text(
            //   'semi;',
            //   style: TextStyle(color: Colors.white, fontSize: 20),
            // ),
            // Text(
            //   'info@semiksa.sa',
            //   style: TextStyle(
            //     color: Colors.blueGrey,
            //     fontSize: 14,
            //   ),
            // )
          ],
        ));
  }
}
