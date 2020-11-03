import 'package:flutter/cupertino.dart';

class FoodItem {
  String name;
  double price;
  String image = "";

  FoodItem({@required this.name, @required this.price, this.image});

}