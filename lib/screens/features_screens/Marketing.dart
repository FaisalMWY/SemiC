import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/features_screens/social_network_management.dart';
import 'package:plant_app/screens/home/components/header_with_seachbox.dart';

class Marketing extends StatefulWidget {
  @override
  _MarketingState createState() => _MarketingState();
}

class _MarketingState extends State<Marketing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox(),
            Text(
              'Marketing with Semi;',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                '\nSemi; provides marketing plan that fully depend on your products, targeted group and more detailed and accurate factors\t\tthat Semi; team takes care of.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              '\n what do we offer?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 4,
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
                                      'assets/images/influences.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Celebrities'),
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
                                'Semi; will help provide   you with picking the      right audince with the    right celebrity'),
                            SizedBox(height: 5),
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
                                  image: AssetImage(
                                      'assets/images/social_media_ad.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Social Platform Marketing'),
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
                                'With social media you can gain influence like never before. as there are billions of view daily!'),
                            SizedBox(height: 5),
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
                                  image: AssetImage(
                                      'assets/images/search_engine.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Search Engine Resaults'),
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
                                'your store will be the first to appear when searched for.'),
                            SizedBox(height: 5),
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
                                  image: AssetImage('assets/images/sms.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('SMS Advertizing'),
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
                                'With SMS Advertizing we\'ll make sure that your store\'s name is on every phone'),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'How we do it?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'First, its essencial to start doing a feasability study to make sure we have the perfect start,  ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
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
                                      'assets/images/feasability.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Feasibility Study'),
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
                                'First, we do a feasibility study to make sure that   we are taking a step in    the right direction.'),
                            SizedBox(height: 5),
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
                                  image: AssetImage(
                                      'assets/images/social_media_ad.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Targeting a Specific Group'),
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
                                'Targeting the right social media applications and celebrities to get the most out of advertisement'),
                            SizedBox(height: 5),
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
                                  image:
                                      AssetImage('assets/images/publish.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Publishing Content'),
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
                                'publisheng the specified content and make sure that things went as planned'),
                            SizedBox(height: 5),
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
                                  image:
                                      AssetImage('assets/images/follow_up.png'),
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('Following Up'),
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
                                'Keep checking for the outcome, state of the ads, dealing with events and much more.'),
                            SizedBox(height: 5),
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
