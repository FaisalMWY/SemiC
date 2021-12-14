import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class WhoAreWe extends StatelessWidget {
  const WhoAreWe(
      {Key key, @required this.text, @required this.press, this.buttonText})
      : super(key: key);
  final String text;
  final String buttonText;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 18, color: kTextColor),
          ),
          GestureDetector(
            onTap: () {
              print('hi');
            },
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}