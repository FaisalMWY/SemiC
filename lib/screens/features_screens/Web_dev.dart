import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/features_screens/social_network_management.dart';
import 'package:plant_app/screens/home/components/header_with_seachbox.dart';
import 'package:url_launcher/url_launcher.dart';

class WebDev extends StatefulWidget {
  @override
  _WebDevState createState() => _WebDevState();
}

Future<void> _launchUniversalLink(String url) async {
  if (await canLaunch(url)) {
    final bool nativeAppLaunchSucceeded = await launch(
      url,
      forceSafariVC: false,
      universalLinksOnly: true,
    );
    if (!nativeAppLaunchSucceeded) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: true,
      );
    }
  }
}

class _WebDevState extends State<WebDev> {
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
                    padding: EdgeInsets.all(0),
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
                              child: Text('Support'),
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
                                'Providing your site with the required technical support'),
                            SizedBox(height: 13),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(0),
                    child: Card(
                      shadowColor: kPrimaryColor,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 30),
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
                              child: Text('Quality'),
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
                                'Developing an efficiane and high quality website'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(00),
                    child: Card(
                      shadowColor: kPrimaryColor,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 30),
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
                            Text('A design that Fits your needs'),
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
                '\n\nApp development plans\n',
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
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Card(
                      shadowColor: kPrimaryColor,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 220,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Semi Basic',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Center(child: Text('300Sr Monthly')),
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
                            Text(
                                'Email account that contains the website\'s domain'),
                            const SizedBox(height: 16),
                            Text(
                              'only one language is aplicable, either Arabic or english',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'supprot for the Mada, Visa and Master card',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'support for delivary sulotions',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Pages limit upto 10 pages',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Standard domain ending with (.com) e.g. comapny.com',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Monthly report for the applictaion',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Control panel',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Products limit upto 10',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'The ability to modify a simple feature/design (for one time.)',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Free host.',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Merging social media icons.',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Better search resaults for you website when searching',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'SSL scurity sertificate',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'adding google map locations for the companies\' branch locations',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 16),
                            Center(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                color: kPrimaryColor,
                                onPressed: () {
                                  _launchUniversalLink(
                                      'https://wa.me/+966532225562');
                                },
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
                        width: 220,
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
                            Center(child: Text('500Sr Monthly')),
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
                            Text(
                                'Email account that contains the website\'s domain'),
                            const SizedBox(height: 16),
                            Text(
                              'only one language is aplicable, either Arabic or english',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'supprot for the Mada, Visa and Master card',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'support for delivary sulotions',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Pages limit upto 10 pages',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Standard domain ending with (.com) e.g. comapny.com',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Monthly report for the applictaion',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Control panel',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Products limit upto 10',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'The ability to modify a simple feature/design (for one time.)',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Free host.',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Merging social media icons.',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Better search resaults for you website when searching',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'SSL scurity sertificate',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'adding google map locations for the companies\' branch locations',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 16),
                            Center(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                color: kPrimaryColor,
                                onPressed: () {
                                  _launchUniversalLink(
                                      'https://wa.me/+966532225562');
                                },
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
                        width: 220,
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
                            Center(child: Text('800Sr Monthly')),
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
                            Text(
                                'Email account that contains the website\'s domain'),
                            const SizedBox(height: 16),
                            Text(
                              'only one language is aplicable, either Arabic or english',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'supprot for the Mada, Visa and Master card',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'support for delivary sulotions',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Pages limit upto 10 pages',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Standard domain ending with (.com) e.g. comapny.com',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Monthly report for the applictaion',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Control panel',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Products limit upto 10',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'The ability to modify a simple feature/design (for one time.)',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Free host.',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Merging social media icons.',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Better search resaults for you website when searching',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'SSL scurity sertificate',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'adding google map locations for the companies\' branch locations',
                            ),
                            const SizedBox(height: 16),
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
                                onPressed: () {
                                  _launchUniversalLink(
                                      'https://wa.me/+966532225562');
                                },
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
                                'you can customize your plan as you with us, whether it is a simple or complicated website'),
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
