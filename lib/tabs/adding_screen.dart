import 'package:flutter/material.dart';
import 'package:crazy_diets/global.dart';
import 'package:crazy_diets/diet.dart';

class AddingScreen extends StatelessWidget {
  AddingScreen({this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: Global.Diets.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Container(
                  height: 50,
                  color: Colors.accents[index],//Colors.amber[((65000*(Global.Diets.length - index))/Global.Diets.length).toInt()],
                  child: Center(child: Text('${Global.Diets[index]}')),
                ),
                onTap: () {
                  Global.currDiet = Global.allDiets[Global.Diets[index]];
                  //Global.allDiets[Global.myDiets[index]] = Diet('a', 'b', 'c');
                  Navigator.of(context).pushReplacementNamed('/diet_screen');
                },
              );
            }
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Global.n = '',
          Global.d = '',
          Global.p = '',
          Navigator.of(context).pushReplacementNamed('/new_diet'),
        },
        child: Icon(Icons.add),
      ),
    );
  }
}