import 'package:flutter/cupertino.dart';

class SocialMediaModel {
  final String service, planName;

  const SocialMediaModel({
    @required this.service,
    @required this.planName,
  });
}

const List<SocialMediaModel> socialMediaPlans = [
  SocialMediaModel(
    service: "Social Media Management",
    planName: "Semi Basic",
  ),
  SocialMediaModel(
    service: "Social Media Management",
    planName: "Semi Pro",
  ),
  SocialMediaModel(
    service: "Social Media Management",
    planName: "Semi Pro+",
  ),
  SocialMediaModel(
    service: "Social Media Management",
    planName: "Semi Custom",
  ),
];
