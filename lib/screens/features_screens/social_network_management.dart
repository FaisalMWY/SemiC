import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_app/screens/home/components/header_with_seachbox.dart';

import '../../constants.dart';

class SocialNetworksManagement extends StatefulWidget {
  @override
  _SocialNetworksManagementState createState() =>
      _SocialNetworksManagementState();
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
  );
}

class _SocialNetworksManagementState extends State<SocialNetworksManagement> {
  int currentIndex = 0;

  String value;
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
                        width: 130,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: InkWell(
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/social_media.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Social Network Management'),
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
                            Text('Social media creation, with daily updates'),
                            SizedBox(height: 10),
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
                        width: 130,
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
                            Text('Posts, stories and picture design.'),
                            SizedBox(
                              height: 10,
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
                        width: 130,
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: InkWell(
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/photograph.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Photography'),
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
                            Text('A group of professional photographers'),
                            SizedBox(height: 10),
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
                        width: 130,
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: InkWell(
                                child: Ink.image(
                                  image: AssetImage(
                                      'assets/images/event_management.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Events'),
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
                            Text('Contests, opening and many sorts of events'),
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
                '\n\nSocial Network Management plans\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SingleChildScrollView(
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
                        width: 200,
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
                            Center(
                              child: Text('2500Sr'),
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
                            Text(
                                'Managing and updating two social media apps of your choice'),
                            const SizedBox(height: 16),
                            Text(
                              '6 Posts per application',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              '1 Motiongraphic video',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Managing 1 advertizing campaign',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'replying to comments in working days',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Whatsapp Business',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Automated reply for Instagram, Twitter and Whatsapp Business',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Creating a linked in account',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Creating a web page that contains your links',
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
                                'Semi Pro',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Center(child: Text('3500Sr')),
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
                                'Managing and updating two social media apps of your choice'),
                            const SizedBox(height: 16),
                            Text(
                              '12 Posts per application',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              '2 Motiongraphic video',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Managing 2 advertizing campaign',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'replying to comments in working days',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'registering upto 20 products in Whatsapp Business ',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Automated reply for Instagram, Twitter and Whatsapp Business',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Creating a linked in account',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Creating a web page that contains your links',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
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
                  Card(
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
                          Center(child: Text('5500Sr')),
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
                              'Managing and updating two social media apps of your choice'),
                          const SizedBox(height: 16),
                          Text(
                            '18 Posts per application',
                          ),
                          const SizedBox(height: 16),
                          Text(
                            '3 Motiongraphic video',
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Managing 3 advertizing campaign',
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'replying to comments in working days',
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Registering upto 30 products in Whatsapp Business',
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Automated reply for Instagram, Twitter and Whatsapp Business',
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Creating a linked in account',
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Creating a web page that contains your links',
                          ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
