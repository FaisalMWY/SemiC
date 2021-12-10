import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/features_screens/social_network_management.dart';
import 'package:plant_app/screens/home/components/header_with_seachbox.dart';

class AppDev extends StatefulWidget {
  @override
  _AppDevState createState() => _AppDevState();
}

class _AppDevState extends State<AppDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox(),
            Center(
              child: Text(
                'We create and manage, to sucess together.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Center(
              child: Text(
                '\nWhat does the App department offer?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      shadowColor: kPrimaryColor,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: InkWell(
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/efficiency.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Efficiency'),
                            ),
                            Center(
                              child: Card(
                                child: Container(
                                  width: 60,
                                  height: 5,
                                ),
                                color: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Developing with quality and speed in mind',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      shadowColor: kPrimaryColor,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: InkWell(
                                child: Ink.image(
                                  image:
                                      AssetImage('assets/images/control.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Control'),
                            ),
                            Center(
                              child: Card(
                                child: Container(
                                  width: 60,
                                  height: 5,
                                ),
                                color: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                                'Easy product management with a control panel'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      shadowColor: kPrimaryColor,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: InkWell(
                                child: Ink.image(
                                  image: AssetImage('assets/images/design.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Design'),
                            ),
                            Center(
                              child: Card(
                                child: Container(
                                  width: 60,
                                  height: 5,
                                ),
                                color: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('Incridible designs with creative designers'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                '\n\nApp development plans',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      shadowColor: kPrimaryColor,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Semi Pro',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Center(
                              child: Text('16000Sr'),
                            ),
                            const SizedBox(height: 8),
                            Center(
                              child: Card(
                                child: Container(
                                  width: 60,
                                  height: 5,
                                ),
                                color: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text('Log in and Register system'),
                            const SizedBox(height: 16),
                            Text(
                              'Main app and admin app',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Including payment methods',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Technical support and maintenance ',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Android and IOS application',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Bonthly report on the application',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Screens limit upto 20',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Back end language is FireBase',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Customer service system inside the app',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Automated refund system',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Application notifications',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'A dedicated news screen for the application',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 35),
                            Center(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                color: kPrimaryColor,
                                onPressed: () {},
                                child: Text(
                                  'Subscribe Here!',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Center(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: kPrimaryColor,
                                onPressed: () {},
                                child: Text(
                                  'Learn More',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Card(
                      shadowColor: kPrimaryColor,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Semi Pro+',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Center(
                              child: Text('20000Sr'),
                            ),
                            const SizedBox(height: 8),
                            Center(
                              child: Card(
                                child: Container(
                                  width: 60,
                                  height: 5,
                                ),
                                color: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text('Log in and Register system'),
                            const SizedBox(height: 16),
                            Text(
                              'Main app and admin app',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Including payment methods',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Technical support and maintenance ',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Android and IOS application',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Bonthly report on the application',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Screens limit upto 30',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Back end language is FireBase',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Customer service system inside the app',
                            ),
                            Text(
                              'Automated refund system',
                            ),
                            Text(
                              'Application notifications',
                            ),
                            Text(
                              'A dedicated news screen for the application',
                            ),
                            const SizedBox(height: 35),
                            Center(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                color: kPrimaryColor,
                                onPressed: () {},
                                child: Text(
                                  'Subscribe Here!',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Center(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: kPrimaryColor,
                                onPressed: () {},
                                child: Text(
                                  'Learn More',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      shadowColor: kPrimaryColor,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 360,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text('Customize your plan with Semi;'),
                            ),
                            Center(
                              child: Card(
                                child: Container(
                                  width: 60,
                                  height: 5,
                                ),
                                color: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                                'you can customize your plan as you with us, whether it is a simple or complicated program'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
