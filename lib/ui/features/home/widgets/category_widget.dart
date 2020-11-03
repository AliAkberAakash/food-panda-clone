import 'package:flutter/material.dart';
import 'package:food_panda_clone/data/models/restaurant_details/food_category.dart';
import 'package:food_panda_clone/data/models/restaurant_details/food_item.dart';
import 'package:food_panda_clone/ui/features/home/widgets/food_item_widget.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              widget.category.name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: text_color1,
                fontFamily: "Open Sans"
              ),
            ),
          ),
          _foodItemList(),
        ],
      ),
    );
  }

  Widget _foodItemList() {
    List<FoodItemWidget> foodItemWidgetList = [];
    int i = 0;
    for(FoodItem x in widget.itemList){
      foodItemWidgetList.add(
        FoodItemWidget(
          item: x,
          index : i,
        ),
      );

      i++;
    }

    return Column(
      children: foodItemWidgetList,
    );
  }

}