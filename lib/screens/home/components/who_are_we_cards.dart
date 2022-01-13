import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/service_list.dart';

class WhoAreWeCards extends StatelessWidget {
  const WhoAreWeCards(
      {Key key,
      @required this.title,
      @required this.image,
      @required this.press})
      : super(key: key);
  final List<String> image;
  final List<String> title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: image
          .map(
            (item) => SizedBox(
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 300,
                    ),
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
          aspectRatio: 3),
    );
  }
}


// padding: EdgeInsets.only(left: 20, right: 20),
//       child: SizedBox(
//         width: 300,
//         height: 150,
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(20),
//           child: Stack(
//             children: [
//               Image.asset(
//                 image,
//                 width: 242,
//                 fit: BoxFit.cover,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Color(0xFF343434).withOpacity(.4),
//                       Color(0xFF343434).withOpacity(.15)
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                 child: Text.rich(
//                   TextSpan(
//                     style: TextStyle(color: Colors.white),
//                     children: [
//                       TextSpan(
//                         text: '$title \n',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),