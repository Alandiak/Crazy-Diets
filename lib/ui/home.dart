import 'package:crazy_diets/tabs/adding_screen.dart';
import 'package:crazy_diets/tabs/my_diets.dart';
import 'package:crazy_diets/tabs/settings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double icon_size = 20.0;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 2.0,
            bottom: TabBar(
              labelColor: Theme.of(context).indicatorColor,
              tabs: [
                Tab(icon: Icon(Icons.favorite, size: icon_size)),
                Tab(icon: Icon(Icons.restaurant, size: icon_size)),
                Tab(icon: Icon(Icons.settings, size: icon_size)),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: TabBarView(
            children: [
              MyDiets(),
              AddingScreen(),
              Settings(),
            ],
          ),
        ),
      ),
    );
  }
}