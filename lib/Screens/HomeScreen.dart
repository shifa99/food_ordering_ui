import 'package:flutter/material.dart';
import 'package:food_ordering_app/Widgets/BuildPartPage.dart';
import 'package:food_ordering_app/Widgets/BuildPizza.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
      ),
      Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 30, top: 20),
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.emoji_food_beverage_sharp),
                      Spacer(),
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      BuildCircleAvater(Image.asset('Images/label.png')),
                    ],
                  ),
                ),
                BuildPartPage(),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Cart',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              BuildPizza(),
            ],
          )
        ],
      ),
    ])));
  }
}
