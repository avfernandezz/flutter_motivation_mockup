import 'package:flutter/material.dart';
import 'package:flutter_selfmotivation/common/constants.dart';

class ContentScreen extends StatelessWidget {
  static const String id = 'content_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xFF1A1E21),
                          child: Icon(Icons.navigate_before)),
                    ),
                  ),
                  SizedBox(width: 50),
                  Text(
                    'Heal & Grow',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Hero(
                    tag: 'img_card',
                    child: Image.asset(
                      'images/girl_mirror.jpg',
                      height: 150,
                      width: 300,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
