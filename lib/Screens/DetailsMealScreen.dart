import 'package:flutter/material.dart';
import 'package:food_ordering_app/Models/DetailsMeal.dart';
import 'package:food_ordering_app/Widgets/AddToCart.dart';
import 'package:food_ordering_app/Widgets/BuildSizePizza.dart';

class DetailsMealScreen extends StatefulWidget {
  static final RouteName = 'DetailsMeal';

  @override
  _DetailsMealScreenState createState() => _DetailsMealScreenState();
}

class _DetailsMealScreenState extends State<DetailsMealScreen> {
  int numOfMeals = 1;
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    print(id);
    final data = getDataMeal(id);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Image.asset(
              data.imageUrl,
            ),
          ),
          Text(
            data.name,
            style: TextStyle(
                fontSize: 37, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              height: 45,
              width: 140,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: Colors.black, width: 0.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (numOfMeals > 1) numOfMeals--;
                      });
                    },
                  ),
                  Text(
                    '${numOfMeals}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        numOfMeals++;
                      });
                    },
                  ),
                ],
              ),
            ),
            Text(
              data.price,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ]),
          Text(
            data.description,
            style: TextStyle(fontSize: 22),
          ),
          BuildSizePizza(),
          AddToCart(),
        ],
      ),
    );
  }
}
