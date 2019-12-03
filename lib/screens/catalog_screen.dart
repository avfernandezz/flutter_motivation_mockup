import 'package:flutter/material.dart';
import 'package:flutter_selfmotivation/common/constants.dart';
import 'package:flutter_selfmotivation/components/menu_card.dart';
import 'package:flutter_selfmotivation/screens/content_screen.dart';

class CatalogScreen extends StatelessWidget {
  static const String id = 'catalog_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sunday',
                    style: kHeaderTextStyle,
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 35,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: kSecondaryGray,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 150,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Suggest an exercise',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Based on how you feel and\nobstacles you face.',
                          style: TextStyle(color: kLightGray, fontSize: 17),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xFF1A1E21),
                      child: Icon(Icons.navigate_next),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Heal & Grow', style: kSubHeaderTextStyle),
                  Text(
                    'Set goal and create a fulfilling future',
                    style: TextStyle(color: kLightGray),
                  )
                ],
              ),
            ),
            Flexible(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: <Widget>[
                  MenuCard(
                    imageSource: 'girl_mirror.jpg',
                    label: 'Travel Journal',
                    clickDestination: ContentScreen.id,
                  ),
                  MenuCard(
                      imageSource: 'girl_flower.png',
                      label: 'Unsent Letter',
                      clickDestination: ContentScreen.id),
                  MenuCard(
                      imageSource: 'girl_flowers.jpg',
                      label: 'Rethinking Loneliness',
                      clickDestination: ContentScreen.id),
                  MenuCard(
                      imageSource: 'girl_cone.jpg',
                      label: 'Letting Go',
                      clickDestination: ContentScreen.id),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
