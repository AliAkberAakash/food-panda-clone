import 'package:flutter/material.dart';
import 'package:food_panda_clone/data/models/restaurant_details/food_category.dart';
import 'package:food_panda_clone/ui/features/home/widgets/category_widget.dart';
import 'package:food_panda_clone/utils/data.dart';
import 'package:food_panda_clone/utils/my_colors.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainBodyHome extends StatefulWidget {
  @override
  _MainBodyHomeState createState() => _MainBodyHomeState();
}



class _MainBodyHomeState extends State<MainBodyHome> {


  List<FoodCategory> tabTextList;
  List<Tab> tabs;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  TabController tabController;

  @override
  void initState() {
    tabTextList = APP_DATA.keys.toList(growable: true);
    tabs = tabTextList.map((e) => Tab(text: e.name,)).toList(growable: true);
    itemPositionsListener.itemPositions.addListener(() {
      ItemPosition pos = itemPositionsListener.itemPositions.value.elementAt(0);
      tabController.animateTo(pos.index, duration: Duration(milliseconds: 500));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(
        builder: (context) {

          tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              itemScrollController.scrollTo(
                index: tabController.index,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOutCubic
              );
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
            body: ScrollablePositionedList.builder(
              itemCount: tabTextList.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Container(
                      color: light_grey1,
                      height: (index==0) ? 0 : 10,
                    ),
                    CategoryWidget(category:tabTextList[index], itemList: APP_DATA[tabTextList[index]],),
                  ],
                );
              },
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
            ),
          );
        }
        ),
    );
  }
}
