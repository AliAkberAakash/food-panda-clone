import 'package:flutter/material.dart';

class FoodItem {
  String name;
  String shortDescription;
  double price;
  String image = "";

  FoodItem({@required this.name,@required this.shortDescription, @required this.price, this.image});

}