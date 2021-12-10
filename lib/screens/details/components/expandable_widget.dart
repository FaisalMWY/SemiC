import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_screens/social_network_management.dart';

class ExpandableCard extends StatefulWidget {
  const ExpandableCard({
    this.title,
    this.image,
  });
  final String title;
  final String image;

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // buildCard(),
      ],
    );
  }

  Widget buildCard(String title, String image) {
    Padding(
      padding: EdgeInsets.all(10),
    );
  }
}
