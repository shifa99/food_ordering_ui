import 'package:flutter/material.dart';
import 'package:food_ordering_app/Models/DetailsMeal.dart';
import 'package:food_ordering_app/Screens/DetailsMealScreen.dart';
import 'package:food_ordering_app/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        DetailsMealScreen.RouteName: (context) => DetailsMealScreen(),
      },
      home: HomeScreen(),
    );
  }
}
