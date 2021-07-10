import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/Favourite/favouritefollow.dart';
import 'package:onxyconnect/Screens/ShowScreens/shownearbyall.dart';
import 'package:onxyconnect/Screens/ShowScreens/shownearbybar.dart';
import 'package:onxyconnect/Screens/ShowScreens/shownearbylive.dart';
import 'package:onxyconnect/Screens/ShowScreens/showstory.dart';
import 'package:onxyconnect/Screens/ShowScreens/showfavbarpopular.dart';

class FavouriteBar extends StatefulWidget {
  static String id = 'favouritebar';

  const FavouriteBar({Key key}) : super(key: key);

  @override
  _FavouriteBarState createState() => _FavouriteBarState();
}

class _FavouriteBarState extends State<FavouriteBar> with SingleTickerProviderStateMixin
{
  TabController _tabController;

  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(
      text: 'Popular',
      // icon: Icon(FontAwesomeIcons.fire),
    ),

    // second tab [you can add an icon using the icon property]
    Tab(
      text: 'Video',
      // icon: Icon(Icons.video_call),
    ),
    Tab(
      text: 'Picture',
      // icon: Icon(Icons.picture_in_picture),
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
        padding: const EdgeInsets.only(left: 12.0,right: 10.0),
        child: DefaultTabController(
          length: list.length,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40),
                child:    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => FavouriteFollow()),
                                    (Route<dynamic> route) => true,
                              );

                            },
                            child: Text('Follow',style: Textt2.textStyle(kTertiarycolor, 20.0),)),

                        SizedBox(width: 10.0,),
                        Text('Bar',style: Textt2.textStyle(kPrimarycolor, 20.0),),

                      ],
                    ),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.search,color: Colors.black45,), onPressed: (){}),

                        IconButton(icon: Icon(Icons.notifications_none_outlined,color: Colors.black45,), onPressed: (){}),

                        Container(
                          height: 30,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: kPrimarycolor
                          ),
                          child: IconButton(icon: Icon(FontAwesomeIcons.pen,size: 15.0,color: Colors.white,), onPressed: (){}),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 120,left: 10),
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
                    ShowFavBarPopular(),
                    ShowFavBarPopular(),
                    ShowFavBarPopular(),

                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
