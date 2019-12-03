import 'package:flutter/material.dart';
import 'package:flutter_selfmotivation/common/constants.dart';

class MenuCard extends StatelessWidget {
  final String imageSource;
  final String label;
  final String clickDestination;

  MenuCard({this.imageSource, this.label, this.clickDestination});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            clickDestination,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'img_card',
              child: Image.asset(
                'images/$imageSource',
                height: 150,
                width: 300,
              ),
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: (TextStyle(
                  color: kTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
