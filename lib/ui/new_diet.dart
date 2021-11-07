import 'package:crazy_diets/tabs/my_diets.dart';
import 'package:flutter/material.dart';

import 'package:crazy_diets/global.dart';
import 'package:crazy_diets/diet.dart';

class NewDiet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Enter a New Diet'))
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Diet Name',
            ),
            onChanged: (text) {
              Global.n = text;
            },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Diet Description',
            ),
            onChanged: (text) {
              Global.d = text;
            },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Diet Process',
            ),
            onChanged: (text) {
              Global.p = text;
            },
          ),
        ],
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
                  if (Global.n.length * Global.d.length * Global.p.length != 0) {
                    Global.Diets.add(Global.n);
                    Global.allDiets[Global.n] = new Diet(Global.n, Global.d, Global.p);
                    Global.currDiet = Global.allDiets[Global.n];
                    Navigator.of(context).pushReplacementNamed('/diet_screen');
                  }
                },
                child: Text("CREATE"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}