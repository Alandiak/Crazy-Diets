import 'dart:collection';

import 'diet.dart';
import 'package:flutter/material.dart';

class Global {
  static List<String> myDiets = [];
  static HashMap<String, Diet> allDiets = new HashMap();
  static List<String> Diets = [];
  static Diet currDiet;
  static String n = '';
  static String d = '';
  static String p = '';
  Global() {
    if (allDiets.isNotEmpty) return;
    String diet = 'Keto';
    Diet info = Diet(diet, 'Keto is a diet where the person avoids all forms of carbs. '
        'By cutting out all carbs the person enters a state of ketosis within 5 days and rapidly starts loosing body fat.'
        , 'On this diet you can eat as much as you want, but no more than 25g of carbs a day. '
            'That means avoiding breads, sugars, and fruits.');
    allDiets[diet] = info;
    Diets.add(diet);
    // String diet2 = 'Intermittent fasting';
    // Diet info2 = Diet(diet, 'Intermittent fasting is where a person eats within only certain times of the day. '
    //     'By eating within only a 6 hour period of time you are forced to eat less and you stomach is empty for longer than usual.'
    //     , 'On this diet you can eat as much as you want, but only within a 6 hour period every day. '
    //         'The standard is from noon to 6pm every day.');
    // allDiets[diet2] = info2;
    // Diets.add(diet2);
  }
}