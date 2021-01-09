import 'package:flutter/material.dart';
import 'package:food_ordering_app/Models/DetailsMeal.dart';
import 'package:food_ordering_app/Screens/DetailsMealScreen.dart';

class BuildListViewMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: detailsMeal.length,
        itemBuilder: (ctx, i) => BuildItemMeal(
          imageUrl: detailsMeal[i].imageUrl,
          name: detailsMeal[i].name,
          price: detailsMeal[i].price,
          id: detailsMeal[i].id,
        ),
      ),
    );
  }
}

class BuildItemMeal extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String name;
  final String id;
  BuildItemMeal({this.imageUrl, this.price, this.name, this.id});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 170,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, DetailsMealScreen.RouteName,
              arguments: id);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Container(height: 100, child: Image.asset(imageUrl))),
            SizedBox(
              height: 10,
            ),
            BuildPriceAndName(name: name, price: price),
          ],
        ),
      ),
    );
  }
}

class BuildPriceAndName extends StatelessWidget {
  final String price;
  final String name;
  final KStyle =
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
  BuildPriceAndName({this.name, this.price});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            price,
            style: KStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            name,
            style: KStyle.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
