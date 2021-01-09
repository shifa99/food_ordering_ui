import 'package:flutter/foundation.dart';

enum PizzaSiza {
  smell,
  medium,
  large,
}

class DetailsMeal {
  final String imageUrl;
  final String name;
  final String price;
  final String id;
  final String description;
  final PizzaSiza pizzaSiza;
  DetailsMeal(
      {this.id,
      this.imageUrl,
      this.name,
      this.price,
      this.description,
      this.pizzaSiza});
}

List<DetailsMeal> detailsMeal = [
  DetailsMeal(
      id: DateTime.now().toString(),
      imageUrl: 'Images/pizzaCircled.png',
      name: 'proscuitto e funghi',
      price: '\$${17.99}',
      description:
          'This kind of Pizza it is very nice And Delicius you should try it now sir'),
  DetailsMeal(
      id: DateTime.now().toString(),
      imageUrl: 'Images/pizzaCircled2.png',
      name: 'Italin Pizza',
      price: '\$${12.45}',
      description:
          'This kind of Pizza it is very nice And Delicius and very fat to diat sir, you should try it now sir'),
];
DetailsMeal getDataMeal(String id) {
  return detailsMeal.firstWhere((element) => element.id == id);
}
