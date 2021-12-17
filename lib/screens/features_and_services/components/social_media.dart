import 'package:flutter/material.dart';
import 'package:plant_app/models/SocialMediaModel.dart';
import 'package:plant_app/screens/features_and_services/components/social_media_cards.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.85, initialPage: 5),
        itemCount: socialMediaPlans.length,
        itemBuilder: (context, index) => SocialMediaCards(
          plan: socialMediaPlans[index],
        ),
      ),
    );
  }
}
