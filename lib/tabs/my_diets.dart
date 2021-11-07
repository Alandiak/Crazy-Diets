import 'package:flutter/material.dart';
import 'package:crazy_diets/global.dart';
import 'package:crazy_diets/diet.dart';

class MyDiets extends StatelessWidget {
  MyDiets({this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: Global.myDiets.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Container(
              height: 50,
              color: Colors.accents[index],//Colors.amber[(600*(Global.myDiets.length - index)/Global.myDiets.length).toInt()],
              child: Center(child: Text('${Global.myDiets[index]}')),
            ),
            onTap: () {
              Global.currDiet = Global.allDiets[Global.myDiets[index]];
              //Global.allDiets[Global.myDiets[index]] = Diet('a', 'b', 'c');
              Navigator.of(context).pushReplacementNamed('/diet_screen');
            },
          );
        }
    );
  }
}