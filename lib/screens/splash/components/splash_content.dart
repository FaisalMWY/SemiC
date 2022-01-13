import 'package:flutter/material.dart';

import '../../../constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(
          flex: 1,
        ),
        Text(
          "سيمي؛",
          style: TextStyle(
            fontSize: (36),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 3),
        AspectRatio(
          aspectRatio: 1.5,
          child: Image.asset(
            image,
          ),
        ),
      ],
    );
  }
}
