import 'package:crazy_diets/tabs/my_diets.dart';
import 'package:flutter/material.dart';

import 'package:crazy_diets/global.dart';
import 'package:crazy_diets/diet.dart';

class DietScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(Global.currDiet.name() + '                   '+ Global.currDiet.rating() + '/5.0      (' + Global.currDiet.rates() + ' ratings)')),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              child: Center(child: Text(Global.currDiet.description()+'\n')),
            ),
            Container(
              height: 50,
              child: Center(child: Text(Global.currDiet.process())),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            Global.currDiet.toggle_liked(),
            Navigator.of(context).pushReplacementNamed('/diet_screen'),
          },
          child: Icon(Global.currDiet.get_icon()),
        ),
        bottomNavigationBar: new Container(
          child: new Row(
            children: <Widget>[

            SizedBox(
            width: MediaQuery.of(context).size.width/2,
            child: new OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: Text("RETURN"),
              ),
            ),


              SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: new OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/rate_me');
                  },
                  child: Text("RATE"),
                ),
              ),


            ],
          ),
        ),
      );
  }
}