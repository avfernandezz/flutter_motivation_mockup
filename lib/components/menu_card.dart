import 'package:flutter/material.dart';
import 'package:flutter_selfmotivation/common/constants.dart';
import 'package:flutter_selfmotivation/model/category.dart';
import 'package:flutter_selfmotivation/screens/content_screen.dart';

class MenuCard extends StatelessWidget {
  final Category category;
  final String clickDestination;

  MenuCard({this.category, this.clickDestination});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContentScreen(category)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'img_card_' + category.id.toString(),
              child: Image.asset(
                'images/' + category.image,
                height: 150,
                width: 300,
              ),
            ),
            SizedBox(height: 10),
            Text(
              category.label,
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
