import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'components/body.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
          CupertinoIcons.trash_fill,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Column(
        children: [
          Text(
            "التنبيهات",
            style: TextStyle(color: Colors.black),
          ),
          // Text(
          //   "${demoCarts.length} منتجات",
          //   style: Theme.of(context).textTheme.caption,
          // ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.bell),
          color: Colors.black,
        )
      ],
    );
  }
}
