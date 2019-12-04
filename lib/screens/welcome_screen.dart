import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';
import 'package:flutter_selfmotivation/screens/catalog_screen.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  final pages = [
    PageViewModel(
        bubbleBackgroundColor: Colors.white,
        pageColor: Colors.black,
        // iconImageAssetPath: 'assets/air-hostess.png',

        body: Text(
          'Be You\nToday we\'re being ourselves',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        title: Text(
          '',
        ),
        titleTextStyle: TextStyle(fontFamily: 'Merienda', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'Merienda', color: Colors.white),
        mainImage: Image.asset(
          'images/koy_girl.jpg',
          height: 500.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
        bubbleBackgroundColor: Colors.white,
        pageColor: Colors.black,
        // iconImageAssetPath: 'assets/air-hostess.png',

        body: Text(
          'Reconnect\nAppreciate the beauty within.',
          style: TextStyle(
            fontSize: 15,
          ),
          textAlign: TextAlign.left,
        ),
        title: Text(
          '',
        ),
        titleTextStyle: TextStyle(fontFamily: 'Merienda', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'Merienda', color: Colors.white),
        mainImage: Image.asset(
          'images/girl_flowers.jpg',
          height: 500.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
        bubbleBackgroundColor: Colors.white,
        pageColor: Colors.black,
        // iconImageAssetPath: 'assets/air-hostess.png',

        body: Text(
          'Explore\nAmaze yourself with everyday wonders and experiences',
          style: TextStyle(
            fontSize: 15,
          ),
          textAlign: TextAlign.left,
        ),
        title: Text(
          '',
        ),
        titleTextStyle: TextStyle(fontFamily: 'Merienda', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'Merienda', color: Colors.white),
        mainImage: Image.asset(
          'images/girl_cone.jpg',
          height: 500.0,
          width: 285.0,
          alignment: Alignment.center,
        ))
  ];
  @override
  Widget build(BuildContext context) {
    var items = [
      Image.asset('images/koy_girl.jpg'),
      Image.asset('images/girl_flowers.jpg'),
      Image.asset('images/girl_cone.jpg')
    ];
    return Container(
      child: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showNextButton: false,
          showBackButton: false,
          showSkipButton: false,
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CatalogScreen(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder,
    );
  }
}
