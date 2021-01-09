import 'package:flutter/material.dart';
import 'package:food_ordering_app/Widgets/CategoryMeal.dart';

import 'BuildListViewMeals.dart';

class BuildPartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Food',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Text(
            'Delivery',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 130,
            child: CategoryMeal(),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Popular',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          BuildListViewMeals(),
        ],
      ),
    );
  }
}
