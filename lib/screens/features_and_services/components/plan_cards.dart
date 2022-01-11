import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/constants.dart';

class PlanCards extends StatelessWidget {
  const PlanCards(
      {Key key,
      @required this.title,
      @required this.image,
      @required this.press,
      @required this.description})
      : super(key: key);
  final String title, image, description;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: ClipRRect(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    image,
                    width: 75,
                    height: 75,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      kPrimaryColor.withOpacity(.4),
                      kSecondaryColor.withOpacity(.15)
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              // IconBtnForPlans(
              //   icon: CupertinoIcons.add,
              //   numOfItems: 0,
              //   press: () {},
              // ),
              Row(
                children: [
                  SizedBox(
                    width: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: '$title',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 280,
                        child: Text(
                          description,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: kTextColor.withOpacity(.8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
