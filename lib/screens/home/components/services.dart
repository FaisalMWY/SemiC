import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> services = [
      {'icon': 'assets/icons/app_dev.svg', 'text': 'App'},
      {'icon': 'assets/icons/web_dev.svg', 'text': 'Web'},
      {'icon': 'assets/icons/design.svg', 'text': 'Design'},
      {'icon': 'assets/icons/marketing.svg', 'text': 'ADs'},
      {'icon': 'assets/icons/social_management.svg', 'text': 'Social'},
      {'icon': 'assets/icons/salla.svg', 'text': 'Salla'},
    ];
    return Padding(
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
