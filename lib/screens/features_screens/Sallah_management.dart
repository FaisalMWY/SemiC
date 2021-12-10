import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/features_screens/social_network_management.dart';
import 'package:plant_app/screens/home/components/header_with_seachbox.dart';

class SallaManagement extends StatefulWidget {
  @override
  _SallaManagementState createState() => _SallaManagementState();
}

class _SallaManagementState extends State<SallaManagement> {
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
                'With Semi; we produce and publish our success.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'If experience in managing online stores is what you\'re looking for then you\'re in the right place, as Semi; has a very talented and exprienced team that seeks your success.',
                style: TextStyle(
                    fontSize: 16,
                    color: kTextColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Center(
              child: Text(
                '\nWhat services we offer?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
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
                      elevation: 15,
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
                                      AssetImage('assets/images/organize.png'),
                                  width: 100,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Coordination \& Design.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
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
                              'Product preperation and designs with creative product designers',
                              style: TextStyle(fontSize: 13),
                            ),
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
                      elevation: 15,
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
                                      AssetImage('assets/images/continue.png'),
                                  width: 100,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Management \& continuation',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
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
                              'Managing the store\'s performance while preparing a monthly report',
                              style: TextStyle(fontSize: 12),
                            ),
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
                      elevation: 15,
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
                                      AssetImage('assets/images/request.png'),
                                  width: 100,
                                  height: 120,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Creation \& Preparation',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
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
                              'setting the store up and managing it continuously',
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(height: 20),
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
                '\nOur plans\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                                'Creating salla store',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Center(
                              child: Text('600Sr Monthly'),
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
                            Text('Booking and verifying a domain'),
                            const SizedBox(height: 16),
                            Text(
                              'Creating an account on salla and put all required information',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Sync social media apps to salla store',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Help registering in maroof and connecting maroof to the store',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Organize the store',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Adding services and products to the store',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Connecting bank accounts to the store and initiate safe electronic payments such as: Visa, Master card and Mada',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Dealing with delivary solutions',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Writing the store identity',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Creating an SMS name (only for those who have a business register)',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Modifications are unlimited only while creating the store',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Free support service for a week after creating the store',
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
                                'managing salla store',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Center(
                              child: Text('800Sr'),
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
                            Text('Booking and verifying a domain'),
                            const SizedBox(height: 16),
                            Text(
                              'Managing the store\s content profissionally',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Replying to questions and queries',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Managing and accepting orders',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Modify the store\'s Interface',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Notifying when Items are out of stock',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Adding identifying pages whenever neccery',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Contacting salla\'s customer service if needed',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'page sorting',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'make your store easier to find with SEO\'s search enhasnment',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'creating coupons for your store',
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'connect the store with google analytics.',
                            ),
                            const SizedBox(height: 115),
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
          ],
        ),
      ),
    );
  }
}
