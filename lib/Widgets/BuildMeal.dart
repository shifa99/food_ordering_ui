import 'package:flutter/material.dart';

class BuildMeal extends StatefulWidget {
  final String imageUel;
  final String name;
  BuildMeal({this.imageUel, this.name});

  @override
  _BuildMealState createState() => _BuildMealState();
}

class _BuildMealState extends State<BuildMeal> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black, width: 0.5),
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.all(0),
        color: !pressed ? Colors.white : Colors.deepOrange[200],
        onPressed: () {
          setState(() {
            pressed = pressed ? false : true;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 50,
                child: Image.asset(
                  widget.imageUel,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.name,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
