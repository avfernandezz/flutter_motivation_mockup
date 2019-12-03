import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    var items = [
      Image.asset('images/koy_girl.jpg'),
      Image.asset('images/girl_flowers.jpg'),
      Image.asset('images/girl_cone.jpg')
    ];
    return Container(
      child: Carousel(
        images: items,
        boxFit: BoxFit.fitHeight,
//        [
//          NetworkImage(
//              'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
//          NetworkImage(
//              'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
//          ExactAssetImage("assets/images/LaunchImage.jpg")
//        ],
      ),
    );
  }
}
