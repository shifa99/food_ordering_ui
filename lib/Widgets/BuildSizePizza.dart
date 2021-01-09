import 'package:flutter/material.dart';

class BuildSizePizza extends StatefulWidget {
  @override
  _BuildSizePizzaState createState() => _BuildSizePizzaState();
}

class _BuildSizePizzaState extends State<BuildSizePizza> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BuildTypeSize('24 cm', Colors.white),
            BuildTypeSize('32 cm', Colors.white),
            BuildTypeSize('42 cm', Colors.white),
          ],
        ));
  }
}

class BuildTypeSize extends StatelessWidget {
  final String size;
  final Color color;
  BuildTypeSize(this.size, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black, width: 0.5),
          borderRadius: BorderRadius.circular(30)),
      child: RaisedButton(
          child: Text(
            size,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {}),
    );
  }
}
