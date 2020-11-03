import 'package:flutter/material.dart';
import 'package:food_panda_clone/data/models/restaurant_details/food_item.dart';
import 'package:food_panda_clone/utils/my_colors.dart';

class FoodItemWidget extends StatefulWidget {

  final FoodItem item;
  final int index;

  const FoodItemWidget({@required this.item, @required this.index});

  @override
  _FoodItemWidgetState createState() => _FoodItemWidgetState();
}

class _FoodItemWidgetState extends State<FoodItemWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Card(
            elevation: 0,
            child: Column(
              children: [
                Container(
                  height: (widget.index>0) ? 1 : 0,
                  color: light_grey2,
                ),
                SizedBox(
                  height: (widget.index>0) ? 10 : 0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.item.name,
                            style: TextStyle(
                              color: text_color1,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat"
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              widget.item.shortDescription,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                              fontSize: 14,
                              color: text_color2,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "from tk ${widget.item.price.toString()}",
                            style: TextStyle(
                              color: text_color1,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat"
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Image.network(
                        "https://source.unsplash.com/random/200x200",
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
