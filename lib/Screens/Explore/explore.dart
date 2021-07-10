import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/Homepage/popular.dart';
import 'package:onxyconnect/Screens/ShowScreens/showexplorepopular.dart';
import 'package:onxyconnect/Screens/ShowScreens/showexploreregions.dart';

class Explore extends StatefulWidget {
  static String id = "explore";
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore>  with SingleTickerProviderStateMixin
{
  TabController _tabController;

  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(
      text: 'Popular',
    ),

    // second tab [you can add an icon using the icon property]
    Tab(
      text: 'Regions',

    ),

  ];


  @override
  void initState() {
    _tabController = TabController(length: list.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 5.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              child:    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Explore',style: Textt2.textStyle(kPrimarycolor, 30.0),),

                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.search,color: Colors.black45,), onPressed: (){}),

                      IconButton(icon: Icon(Icons.notifications_none_outlined,color: Colors.black45,), onPressed: (){}),

                    ],
                  ),


                ],
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(right: 120,),
              child: Container(
                height: 40,
                width: 800,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: new TabBar(
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BubbleTabIndicator(
                      indicatorHeight: 40.0,
                      indicatorColor: kPrimarycolor,
                      tabBarIndicatorSize: TabBarIndicatorSize.tab,
                      // Other flags
                      // indicatorRadius: 1,
                      // insets: EdgeInsets.all(1),
                      // padding: EdgeInsets.all(10)
                    ),
                    labelColor: kTertiarycolor,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.grey,

                    tabs: list
                ),
              ),
            ),


            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                ShowExplorePopular(),
                  ShowExploreRegions(),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
