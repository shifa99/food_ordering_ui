import 'package:flutter/material.dart';
import 'package:food_ordering_app/Models/DataCategory.dart';
import 'package:food_ordering_app/Widgets/BuildMeal.dart';
class CategoryMeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: mealCategory.length,
      itemBuilder: (ctx,i)=>BuildMeal(imageUel:mealCategory[i].imageUrl ,name: mealCategory[i].name),
    );
  }
}