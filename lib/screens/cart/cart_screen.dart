import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
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
            "السلة",
            style: TextStyle(color: Colors.black),
          ),
          // Text(
          //   "${demoCarts.length} منتجات",
          //   style: Theme.of(context).textTheme.caption,
          // ),
        ],
      ),
    );
  }
}
