import 'package:crazy_diets/tabs/my_diets.dart';
import 'package:flutter/material.dart';

import 'package:crazy_diets/global.dart';
import 'package:crazy_diets/diet.dart';

class RateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Column(//Column contains question section, true-false buttons and scorecard (Row).
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child:
              Text("RATE THIS DIET FROM 1-5"),
            ),// Question section is styled by wrapping it in Center,Padding and Expanded widgets.
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text('1'),
              onPressed: () {
                Global.currDiet.add_rating(1);
                Navigator.of(context).pushReplacementNamed('/diet_screen');
              },
            ),
          ),// FlatButton is styled well to improve the UI.
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text('2'),
              onPressed: () {
                Global.currDiet.add_rating(2);
                Navigator.of(context).pushReplacementNamed('/diet_screen');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text('3'),
              onPressed: () {
                Global.currDiet.add_rating(3);
                Navigator.of(context).pushReplacementNamed('/diet_screen');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text('4'),
              onPressed: () {
                Global.currDiet.add_rating(4);
                Navigator.of(context).pushReplacementNamed('/diet_screen');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text('5'),
              onPressed: () {
                Global.currDiet.add_rating(5);
                Navigator.of(context).pushReplacementNamed('/diet_screen');
                },
            ),
          ),
        ),
      ],
    );
  }
}