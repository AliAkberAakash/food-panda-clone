import 'package:flutter/material.dart';
import 'package:food_panda_clone/data/models/restaurant_details/food_category.dart';
import 'package:food_panda_clone/data/models/restaurant_details/food_item.dart';
import 'package:food_panda_clone/utils/my_colors.dart';

class CategoryWidget extends StatefulWidget {

  final FoodCategory category;
  final List<FoodItem> itemList;

  const CategoryWidget({@required this.category, @required this.itemList});

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
          child: Text(
            widget.category.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: text_color1,
              fontFamily: "Montserrat"
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        /*ListView.builder(
          itemCount: widget.itemList.length,
          itemBuilder: (context, index){
            return Text(
              widget.category.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            );
          }
        )*/
      ],
    );
  }
}