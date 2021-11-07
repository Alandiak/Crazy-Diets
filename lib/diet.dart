import 'package:flutter/material.dart';
import 'global.dart';

class Diet {
  String Diets = '';
  int total = 0;
  int ratings = 0;
  String Description = '';
  String Process = '';
  bool Liked = false;

  Diet(String diet, String description, String process) {
    Diets = diet;
    Description = description;
    Process = process;
  }

  IconData get_icon() {
    if (Liked) return Icons.favorite;
    return Icons.favorite_border;
  }

  void toggle_liked() {
    if (Liked) {
      Global.myDiets.remove(Diets);
    } else {
      Global.myDiets.add(Diets);
    }
    Liked = !Liked;
  }

  String rating() {
    if (total == 0) return '0';
    int r = (10*total/ratings + 0.0999999).toInt();
    String x = r.toString();
    while (x.length < 2) x = '0'+x;
    x = x.substring(0, 1) + '.' + x.substring(1);
    return x;
  }

  String rates() {
    return ratings.toString();
  }

  void add_rating(int rate) {
    total += rate;
    ratings++;
  }

  String name() { return Diets; }
  String description() { return Description; }
  String process() { return Process; }
}