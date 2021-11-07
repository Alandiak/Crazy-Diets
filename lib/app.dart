import 'package:crazy_diets/ui/home.dart';
import 'package:crazy_diets/ui/new_diet.dart';
import 'package:crazy_diets/ui/rate_me.dart';
import 'package:flutter/material.dart';

import 'package:crazy_diets/ui/diet_screen.dart';
import 'package:crazy_diets/ui/login.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      //theme: buildTheme(),
      //color: Colors.red,
      initialRoute: '/login',
      routes: {
        // If you're using navigation routes, Flutter needs a base route.
        // We're going to change this route once we're ready with
        // implementation of HomeScreen.
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/diet_screen': (context) => DietScreen(),
        '/new_diet': (content) => NewDiet(),
        '/rate_me': (context) => RateScreen(),
      },
    );
  }
}