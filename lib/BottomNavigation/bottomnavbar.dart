import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/Homepage/nearby.dart';
import 'package:onxyconnect/Screens/Homepage/popular.dart';
import 'package:onxyconnect/Screens/Login&Signup/login.dart';
import 'package:onxyconnect/Screens/Login&Signup/signup.dart';
import 'package:onxyconnect/Screens/PhoneLogin/loginnumber.dart';
import 'package:onxyconnect/Screens/PhoneLogin/otpscreen.dart';
import 'file:///F:/Flutter%20Project/Freelance%20Project/Fiverr/onxyconnect/lib/Screens/Login&Signup/login.dart';
import 'file:///F:/Flutter%20Project/Freelance%20Project/Fiverr/onxyconnect/lib/Screens/Login&Signup/signup.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


class BottomNavBar extends StatefulWidget {
  static String id = "bottomnavbar";


  // final String title;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of a first screen

  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

   AnimationController _animationController;
   Animation<double> animation;
   CurvedAnimation curve;

  final iconList = <IconData>[
    Icons.home,
    FontAwesomeIcons.globe,
    FontAwesomeIcons.star,
    Icons.person_outline,
  ];

  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    return didPushRouteInformation(routeInformation);
  }

  @override
  void initState() {
    super.initState();
    final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: HexColor('#373A36'),
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
          () => _animationController.forward(),
    );
  }
  static  List<Widget> _widgetOptions = <Widget>[

    Nearby(),
    Popular(),
    LoginNumber(),
    OtpScreen(),




//    myProfile()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: _widgetOptions.elementAt(_bottomNavIndex),
        floatingActionButton: ScaleTransition(
          scale: animation,
          child: FloatingActionButton(
            elevation: 8,
            backgroundColor: kPrimarycolor,
            // child: Icon(
            //   Icons.brightness_3,
            //   color: HexColor('#373A36'),
            // ),
            onPressed: () {
              _animationController.reset();
              _animationController.forward();
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? kPrimarycolor : kTertiarycolor;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconList[index],
                  size: 24,
                  color: color,
                ),
                // const SizedBox(height: 4),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 8),
                //   child: AutoSizeText(
                //     "brightness $index",
                //     maxLines: 1,
                //     style: TextStyle(color: color),
                //     group: autoSizeGroup,
                //   ),
                // )
              ],
            );
          },

          backgroundColor: Colors.white,
          activeIndex: _bottomNavIndex,
          splashColor: kPrimarycolor,
          notchAndCornersAnimation: animation,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
        ),

    );

  }
}


// class ProvidedStylesExample extends StatefulWidget {
//   final BuildContext menuScreenContext;
//   // final IconData iconData;
//
//
//   ProvidedStylesExample({Key key, this.menuScreenContext,}) : super(key: key);
//
//   @override
//   _ProvidedStylesExampleState createState() => _ProvidedStylesExampleState();
// }
//
// class _ProvidedStylesExampleState extends State<ProvidedStylesExample> {
//   PersistentTabController _controller;
//   bool _hideNavBar;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = PersistentTabController(initialIndex: 0);
//     _hideNavBar = false;
//   }
//   final iconList = <IconData>[
//     Icons.home,
//     FontAwesomeIcons.globe,
//     FontAwesomeIcons.star,
//     Icons.person_outline,
//   ];
//
//
//   List<Widget> _buildScreens() {
//     return [
//
//     ];
//   }
//
//   List<PersistentBottomNavBarItem> _navBarsItems() {
//     return [
//       PersistentBottomNavBarItem(
//         activeColorPrimary: kPrimarycolor,
//         inactiveColorPrimary: kTertiarycolor,
//         routeAndNavigatorSettings: RouteAndNavigatorSettings(
//           initialRoute: '/',
//           routes: {
//             '/nearby': (context) => Nearby(),
//             '/popular': (context) => Popular(),
//           },
//         ),
//       ),
//       PersistentBottomNavBarItem(
//         activeColorPrimary: kPrimarycolor,
//         inactiveColorPrimary: kTertiarycolor,
//         routeAndNavigatorSettings: RouteAndNavigatorSettings(
//           initialRoute: '/',
//           routes: {
//             '/loginnumber': (context) => LoginNumber(),
//           },
//         ),
//       ),
//       PersistentBottomNavBarItem(
//         activeColorPrimary: kPrimarycolor,
//         inactiveColorPrimary: kTertiarycolor,
//         routeAndNavigatorSettings: RouteAndNavigatorSettings(
//           initialRoute: '/',
//           routes: {
//             '/otpscreen': (context) => OtpScreen(),
//             // '/popular': (context) => Popular(),
//           },
//         ),
//       ),
//       PersistentBottomNavBarItem(
//         activeColorPrimary: kPrimarycolor,
//         inactiveColorPrimary: kTertiarycolor,
//         routeAndNavigatorSettings: RouteAndNavigatorSettings(
//           initialRoute: '/',
//           routes: {
//             '/otpscreen': (context) => OtpScreen(),
//             // '/popular': (context) => Popular(),
//           },
//         ),
//       ),
//
//
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PersistentTabView(
//         context,
//         controller: _controller,
//         screens: _buildScreens(),
//         items: _navBarsItems(),
//         confineInSafeArea: true,
//         backgroundColor: Colors.white,
//         handleAndroidBackButtonPress: true,
//         resizeToAvoidBottomInset: true,
//         stateManagement: true,
//         navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
//             ? 0.0
//             : kBottomNavigationBarHeight,
//         hideNavigationBarWhenKeyboardShows: true,
//         margin: EdgeInsets.all(0.0),
//         popActionScreens: PopActionScreensType.all,
//         bottomScreenMargin: 0.0,
//         onWillPop: (context) async {
//           await showDialog(
//             context: context,
//             useSafeArea: true,
//             builder: (context) => Container(
//               height: 50.0,
//               width: 50.0,
//               color: Colors.white,
//             ),
//           );
//           return false;
//         },
//         // selectedTabScreenContext: (context) {
//         //   testContext = context;
//         // },
//         hideNavigationBar: _hideNavBar,
//         decoration: NavBarDecoration(
//             colorBehindNavBar: Colors.indigo,
//             borderRadius: BorderRadius.circular(20.0)),
//         popAllScreensOnTapOfSelectedTab: true,
//         itemAnimationProperties: ItemAnimationProperties(
//           duration: Duration(milliseconds: 400),
//           curve: Curves.ease,
//         ),
//         screenTransitionAnimation: ScreenTransitionAnimation(
//           animateTabTransition: true,
//           curve: Curves.ease,
//           duration: Duration(milliseconds: 200),
//         ),
//         navBarStyle:
//         NavBarStyle.style17, // Choose the nav bar style with this property
//       ),
//     );
//   }
// }

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}