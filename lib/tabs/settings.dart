import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:crazy_diets/global.dart';
import 'package:crazy_diets/diet.dart';

class Settings extends StatelessWidget {
  Settings({this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        // If the button size(Row) is 90% then we give margin 5% + 5% like this
        margin: EdgeInsets.symmetric(horizontal: 0.05 * MediaQuery.of(context).size.width),

    // We need a Row in order to "Expanded" to work
      child: Row(
        children: <Widget>[
        // Use "Expanded" if you want the button to fill the Row's size
        // Use "Flexible" if you want the button to fit the text inside size.
          Expanded(
            child: MaterialButton(
              onPressed: () {
                Global.allDiets = new HashMap();
                Global.Diets = new List();
                Global.myDiets = new List();
                Navigator.of(context).pushReplacementNamed('/login');
              },
              child: Text(
                  "RESET",
                  style: TextStyle(
                    fontFamily: 'Roboto-Medium',
                    fontSize: 100,
                    color: Colors.black,
                  ),
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}