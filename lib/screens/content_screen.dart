import 'package:flutter/material.dart';
import 'package:flutter_selfmotivation/common/constants.dart';
import 'package:flutter_selfmotivation/model/category.dart';

class ContentScreen extends StatelessWidget {
  static const String id = 'content_screen';
  final Category category;

  ContentScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Hero(
                    tag: 'img_card_' + category.id.toString(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'images/' + category.image,
                        height: 375,
                        width: 350,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      height: 150,
                      width: 325,
                      decoration: BoxDecoration(
                        color: kSecondaryGray,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              category.label,
                              style: TextStyle(
                                fontFamily: 'merienda',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            'Forgive to move forward',
                            style: TextStyle(
                              color: kLightGray,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            height: 40,
                            width: 305,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text('START JOURNEY',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'Resources',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'merienda',
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.book,
                          color: kLightGray,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kSecondaryGray,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'STORY',
                            style: TextStyle(color: kLightGray),
                          ),
                          Text(
                            'Introduction to ' + category.label + ' List',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
