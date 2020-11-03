import 'package:flutter/material.dart';
import 'package:food_panda_clone/data/models/restaurant_details/food_item.dart';
import 'package:food_panda_clone/utils/my_colors.dart';

class FoodItemWidget extends StatefulWidget {

  final FoodItem item;

  const FoodItemWidget({@required this.item});

  @override
  _FoodItemWidgetState createState() => _FoodItemWidgetState();
}

class _FoodItemWidgetState extends State<FoodItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.item.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.item.shortDescription,
            style: TextStyle(
              fontSize: 14,
              color: text_color2
            ),
          ),
          Text(
            widget.item.price.toString(),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
