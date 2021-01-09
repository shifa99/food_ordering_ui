import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.restaurant,
            color: Colors.deepPurpleAccent,
          ),
          radius: 20,
        ),
        SizedBox(
          width: 15,
        ),
        RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            color: Color(0xFFFFD8B9),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Add to cart ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () {})
      ],
    );
  }
}
