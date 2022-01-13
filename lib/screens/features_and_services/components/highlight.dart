import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class Highlights extends StatelessWidget {
  const Highlights(
      {Key key, this.title, @required this.image, this.press, this.quote})
      : super(key: key);
  final List<String> image;
  final String title, quote;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: image
          .map(
            (item) => SizedBox(
              width: 300,
              height: 260,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      item,
                      fit: BoxFit.fitWidth,
                      width: 300,
                      height: 260,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          // gradient: LinearGradient(
                          //   begin: Alignment.topCenter,
                          //   end: Alignment.bottomCenter,
                          //   colors: [
                          //     Color(0xFF343434).withOpacity(.4),
                          //     Color(0xFF343434).withOpacity(.15)
                          //   ],
                          // ),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
          reverse: true,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 2),
    );
  }
}
