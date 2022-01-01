import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/models/SocialMediaModel.dart';

class SocialMediaCards extends StatelessWidget {
  const SocialMediaCards({Key key, this.plan}) : super(key: key);
  final SocialMediaModel plan;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16 / 2),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Looking For Your Desire Specialist Doctor?",
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16 / 2),
                      width: 2,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFF83D047),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plan.planName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          plan.service + "\n",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
