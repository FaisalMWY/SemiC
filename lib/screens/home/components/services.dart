import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> services = [
      {'icon': 'assets/icons/app.svg', 'text': 'App'},
      {'icon': 'assets/icons/web.svg', 'text': 'Web'},
      {'icon': 'assets/icons/design.svg', 'text': 'Design'},
      {'icon': 'assets/icons/ads.svg', 'text': 'ADs'},
      {'icon': 'assets/icons/social.svg', 'text': 'Social'},
      {'icon': 'assets/icons/salla.svg', 'text': 'Salla'},
    ];
    return Column(
      children: [
        WhoAreWe(
          text: 'Our Services',
          press: () {},
          buttonText: 'Services Page',
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                services.length,
                (index) => ServiceCard(
                    icon: services[index]['icon'],
                    text: services[index]['text'],
                    press: () {}),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 44,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  //color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
