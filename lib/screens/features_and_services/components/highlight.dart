import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class Highlights extends StatelessWidget {
  const Highlights(
      {Key key,
      @required this.title,
      //@required this.image,
      @required this.press,
      @required this.quote})
      : super(key: key);
  // final String title, image, quote;
  final String title, quote;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 300,
        height: 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              // Image.asset(
              //   image,
              //   width: 242,
              //   fit: BoxFit.cover,
              // ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(.4),
                      Color(0xFF343434).withOpacity(.15)
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: '$title',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (quote != null) TextSpan(text: '$quote')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
