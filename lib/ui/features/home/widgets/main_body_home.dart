import 'package:flutter/material.dart';
import 'package:food_panda_clone/data/models/restaurant_details/food_category.dart';
import 'package:food_panda_clone/ui/features/home/widgets/category_widget.dart';
import 'package:food_panda_clone/utils/data.dart';
import 'package:food_panda_clone/utils/my_colors.dart';

class MainBodyHome extends StatefulWidget {
  @override
  _MainBodyHomeState createState() => _MainBodyHomeState();
}



class _MainBodyHomeState extends State<MainBodyHome> {


  List<FoodCategory> tabTextList;
  List<Tab> tabs;

  @override
  void initState() {
    tabTextList = APP_DATA.keys.toList(growable: true);
    tabs = tabTextList.map((e) => Tab(text: e.name,)).toList(growable: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(
        builder: (context) {

          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              // Your code goes here.
              // To get index of current tab use tabController.index
            }
          });

          return Scaffold(
            backgroundColor: white,
            appBar: AppBar(
              bottom: TabBar(
                isScrollable: true,
                tabs: tabs,
              ),
            ),
            body: ListView.builder(
              itemCount: tabTextList.length,
                itemBuilder: (context, index){
                  return CategoryWidget(category:tabTextList[index], itemList: APP_DATA[tabTextList[index]],);
                }
            ),
          );
        }
        ),
    );
  }
}
