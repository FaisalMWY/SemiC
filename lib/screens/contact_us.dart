import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/underlined_title.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home/components/header_with_seachbox.dart';
import 'home/components/recomend_plants.dart';
import 'home/components/title_with_more_bbtn.dart';
import 'home/home_screen.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: true,
      );
    } else
      throw 'launch error';
  }

  Future<void> _launchUniversalLink(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: false,
          forceWebView: true,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(),
          UnderlinedTitle(title: "contact with us", press: () {}),
          SingleChildScrollView(
            child: Row(
              children: [
                RecomendPlantCard(
                  image: "assets/images/outlook_3.png",
                  title: "Email",
                  country: "Info@semiksa.com",
                  // price: 1400,
                  press: () {},
                ),
                RecomendPlantCard(
                  image: "assets/images/whatsapp_4.png",
                  title: "Whatsapp",
                  country: "+966 53 222 5562",
                  // price: 1400,
                  press: () {
                    _launchUniversalLink('https://wa.me/+966532225562');
                  },
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Row(
              children: [
                RecomendPlantCard(
                  image: "assets/images/twitter.png",
                  title: "Twitter",
                  country: "Semi_KSA",
                  // price: 1400,
                  press: () {
                    _launchUniversalLink('https://twitter.com/Semi_ksa');
                  },
                ),
                RecomendPlantCard(
                  image: "assets/images/instagram_1.png",
                  title: "Instagram",
                  country: "semi.ksa",
                  // price: 1400,
                  press: () {
                    _launchUniversalLink('https://www.instagram.com/semi.ksa/');
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
