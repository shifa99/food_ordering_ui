import 'package:flutter/material.dart';

class BuildPizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildCircleAvater(Image.asset('Images/pizzaCircled2.png',
        fit: BoxFit.contain,
      ),),
        SizedBox(
          width: 10,
        ),
        BuildCircleAvater(Image.asset('Images/pizzaCircled.png',
        fit: BoxFit.cover,
      ),
      ),
      SizedBox(width: 30,),
      BuildCircleAvater(Text('1')),
      ],
    );
  }
}

class BuildCircleAvater extends StatelessWidget {
  final Widget contains;
  BuildCircleAvater(this.contains);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
          children:[
             CircleAvatar(
        backgroundColor: Colors.white,
        radius: 24,
      ),
           CircleAvatar(
        child: contains,
        backgroundColor: Colors.white,
        radius: 20,
      ),
      ]
    );
  }
}
