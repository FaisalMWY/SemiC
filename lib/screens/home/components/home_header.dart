import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/Notifications/notifications_screen.dart';
import 'package:plant_app/screens/cart/cart_screen.dart';
import 'package:plant_app/screens/cart/components/cart_card.dart';
import 'package:plant_app/screens/home/components/icon_btn_with_counter.dart';
import 'package:plant_app/screens/home/components/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtnWithCounter(
            icon: CupertinoIcons.bell,
            numOfItems: 0,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsScreen()),
              );
            },
          ),
          IconBtnWithCounter(
            icon: CupertinoIcons.cart,
            numOfItems: 0,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
          SearchField(),
        ],
      ),
    );
  }
}
