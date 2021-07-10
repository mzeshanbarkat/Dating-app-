import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/Explore/explore.dart';
import 'package:onxyconnect/Screens/Favourite/favouritebar.dart';
import 'package:onxyconnect/Screens/Favourite/favouritefollow.dart';
import 'package:onxyconnect/Screens/Homepage/chat.dart';
import 'package:onxyconnect/Screens/Homepage/nearby.dart';
import 'package:onxyconnect/Screens/Homepage/popular.dart';
import 'package:onxyconnect/Screens/Profile/profile.dart';
import 'package:onxyconnect/Screens/ShowScreens/showexplorepopular.dart';
import 'package:onxyconnect/Screens/ShowScreens/showexploreregions.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Navscreen extends StatefulWidget {
  static String id = "navscreen";

  @override
  _NavscreenState createState() => _NavscreenState();
}

class _NavscreenState extends State<Navscreen> {
  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      Nearby(),
      Explore(),
      Explore(),
      FavouriteFollow(),
      Profile(),


    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_outlined),
        iconSize: 35.0,
        activeColorPrimary: kPrimarycolor,
        inactiveColorPrimary: kTertiarycolor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/first',
          routes: {
            '/first': (context) => Nearby(),
            '/second': (context) => Popular(),
            // '/third': (context) => Chat(),

          },
        ),

      ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.globe),
        iconSize: 35.0,
        activeColorPrimary: kPrimarycolor,
        inactiveColorPrimary: kTertiarycolor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/first',
          routes: {
            '/first': (context) => ShowExplorePopular(),
            '/second': (context) => ShowExploreRegions(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.add),
        iconSize: 35.0,

        activeColorPrimary: kPrimarycolor,
    inactiveColorPrimary: kTertiarycolor,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: '/first',
            routes: {
              '/first': (context) => ShowExplorePopular(),
              '/second': (context) => ShowExploreRegions(),
            },
          ),
          // onPressed: (context) {
          //   pushDynamicScreen(context,
          //       screen: MainScreen2(), withNavBar: true);
          // }
          ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.star),
        iconSize: 35.0,
        activeColorPrimary: kPrimarycolor,
    inactiveColorPrimary: kTertiarycolor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/first',
          routes: {
            '/first': (context) => FavouriteFollow(),
            '/second': (context) => FavouriteBar(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_outline),
    iconSize: 35.0,
    activeColorPrimary: kPrimarycolor,
    inactiveColorPrimary: kTertiarycolor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/first',
          routes: {
            '/first': (context) => Profile(),

          },
        ),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        // onWillPop: (context) async {
        //   await showDialog(
        //     context: context,
        //     useSafeArea: true,
        //     builder: (context) => Container(
        //       height: 50.0,
        //       width: 50.0,
        //       color: Colors.white,
        //       child: ElevatedButton(
        //         child: Text("Close"),
        //         onPressed: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ),
        //   );
        //   return false;
        // },
        selectedTabScreenContext: (context) {
          // testContext = context;
        },
        hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            borderRadius: BorderRadius.circular(20.0)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
        NavBarStyle.style15, // Choose the nav bar style with this property
      ),
    );
  }
}
