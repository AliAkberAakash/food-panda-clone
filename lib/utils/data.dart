import 'package:food_panda_clone/data/models/restaurant_details/food_category.dart';
import 'package:food_panda_clone/data/models/restaurant_details/food_item.dart';

  Map<FoodCategory, List<FoodItem>> APP_DATA = {
  FoodCategory(name: "Salad") : [
    FoodItem(
      name: "Mixed Raita",
      price: 150.00,
    ),
    FoodItem(
      name: "Onion Raita",
      price: 150.00,
    ),
  ],
  FoodCategory(name : "Appetizer") : [
    FoodItem(
      name: "Chicken Lollipop",
      price: 80.00,
    ),
    FoodItem(
      name: "French Fries",
      price: 80.00,
    ),
    FoodItem(
      name: "Crispy Fried Chicken",
      price: 80.00,
    ),
  ],
  FoodCategory(name : "Rice") : [
    FoodItem(
      name: "Rice Bowl 1",
      price: 160.00,
    ),
    FoodItem(
      name: "Rice Bowl 2",
      price: 180.00,
    ),
    FoodItem(
      name: "Teriyaki Rice Bowl",
      price: 200.00,
    ),
  ],
    FoodCategory(name : "Pizza") : [
      FoodItem(
        name: "Barbeque Pizza",
        price: 360.00,
      ),
      FoodItem(
        name: "Cheese Overloaded",
        price: 380.00,
      ),
      FoodItem(
        name: "Meat Lover",
        price: 400.00,
      ),
    ],
    FoodCategory(name : "Pasta") : [
      FoodItem(
        name: "Oven Baked",
        price: 260.00,
      ),
      FoodItem(
        name: "White Sauce Pasta",
        price: 280.00,
      ),
      FoodItem(
        name: "Chef Special Pasta",
        price: 300.00,
      ),
    ],
  FoodCategory(name : "Drinks") : [
    FoodItem(
      name: "Diet Coke",
      price: 80.00,
    ),
    FoodItem(
      name: "Sprite",
      price: 60.00,
    ),
    FoodItem(
      name: "Chocolate Cold Coffee",
      price: 120.00,
    ),
  ],
};