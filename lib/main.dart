import 'package:flutter/material.dart';
import 'package:flutter_selfmotivation/screens/catalog_screen.dart';
import 'package:flutter_selfmotivation/screens/content_screen.dart';
import 'package:flutter_selfmotivation/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: CatalogScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        CatalogScreen.id: (context) => CatalogScreen(),
        ContentScreen.id: (context) => ContentScreen(),
      },
    );
  }
}
