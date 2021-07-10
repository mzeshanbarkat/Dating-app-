import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/Homepage/chat.dart';
import 'package:onxyconnect/Screens/Homepage/nearby.dart';
import 'package:onxyconnect/Screens/Homepage/pk.dart';
import 'package:onxyconnect/Screens/ShowScreens/shownearbyall.dart';
import 'package:onxyconnect/Screens/ShowScreens/shownearbybar.dart';
import 'package:onxyconnect/Screens/ShowScreens/shownearbylive.dart';
import 'package:onxyconnect/Screens/ShowScreens/showpopularall.dart';
import 'package:onxyconnect/Screens/ShowScreens/showpopularbeauty.dart';
import 'package:onxyconnect/Screens/ShowScreens/showpopulardancing.dart';
import 'package:onxyconnect/Screens/ShowScreens/showpopularsinging.dart';

import 'game.dart';


class Popular extends StatefulWidget {
  static String id = "popular";
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> with SingleTickerProviderStateMixin
{
  TabController _tabController;

  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(
      text: 'All',
    ),

    // second tab [you can add an icon using the icon property]
    Tab(
      text: 'Beauty',

    ),
    Tab(
      text: 'Dancing',
    ),

    Tab(
      text: 'Singing',
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
    return DefaultTabController(
      length: list.length,

      child: Scaffold(
        backgroundColor: Colors.white,

        body: Column(
          children: [


            Container(
              padding: EdgeInsets.only(top: 40),
              child:    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Nearby()),
                                (Route<dynamic> route) => true,
                          );

                        },
                        child: Text('Nearby',style: Textt2.textStyle(kTertiarycolor, 20),)),
                  ),

                  Text('Popular',style: Textt2.textStyle(kPrimarycolor, 20),),

                  GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Chat()),
                              (Route<dynamic> route) => true,
                        );

                      },
                      child: Text('Chat',style: Textt2.textStyle(kTertiarycolor, 20),)),

                  GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Game()),
                              (Route<dynamic> route) => true,
                        );
                      },
                      child: Text('Game',style: Textt2.textStyle(kTertiarycolor, 20),)),

                  GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => PK()),
                              (Route<dynamic> route) => true,
                        );
                      },
                      child: Text('Pk',style: Textt2.textStyle(kTertiarycolor, 20),)),

                  IconButton(icon: Icon(Icons.search,color: Colors.black45,), onPressed: (){}),
                  IconButton(icon: Icon(Icons.notifications_none_outlined,color: Colors.black45,), onPressed: (){}),


                ],
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(right: 30,left: 10),
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
                 ShowPopularAll(),
                  ShowPopularBeauty(),
                  ShowPopularDancing(),
                  ShowPopularSinging(),

                ],
              ),
            ),
          ],
        ),
      ),
    );


  }
}
