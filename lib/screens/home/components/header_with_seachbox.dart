import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    this.planList,
    //@required this.size,
  });
  final Function planList;
  //final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      //margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      //  height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: 200,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              image: DecorationImage(
                  image: AssetImage('assets/images/header.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      //   image: DecorationImage(
                      //       image: AssetImage('assets/images/semi.png')),
                      ),
                ),
                // Text(
                //   'Semi;',
                //   style: Theme.of(context).textTheme.headline5.copyWith(
                //       color: Colors.white, fontWeight: FontWeight.bold),
                // ),
                // Spacer(),

                //SvgPicture.asset("assets/icons/semiLogo.svg"),
                //planList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
