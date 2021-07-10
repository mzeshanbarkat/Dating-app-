import 'package:flutter/material.dart';
import 'package:onxyconnect/BottomNavigation/bottom_bar.dart';
import 'package:onxyconnect/BottomNavigation/bottomnavbar.dart';
import 'package:onxyconnect/BottomNavigation/navscreen.dart';
import 'package:onxyconnect/Screens/Explore/explore.dart';
import 'package:onxyconnect/Screens/Favourite/favouritefollow.dart';
import 'package:onxyconnect/Screens/Homepage/chat.dart';
import 'package:onxyconnect/Screens/Homepage/game.dart';
import 'package:onxyconnect/Screens/Homepage/nearby.dart';
import 'package:onxyconnect/Screens/Homepage/popular.dart';
import 'package:onxyconnect/Screens/PhoneLogin/loginnumber.dart';
import 'package:onxyconnect/Screens/PhoneLogin/otpscreen.dart';
import 'package:onxyconnect/Screens/ShowScreens/showchatall.dart';
import 'package:onxyconnect/Screens/ShowScreens/showgame.dart';
import 'package:onxyconnect/Screens/ShowScreens/shownearbyall.dart';
import 'package:onxyconnect/Screens/ShowScreens/shownearbylive.dart';
import 'package:onxyconnect/Screens/ShowScreens/showpk.dart';
import 'file:///F:/Flutter%20Project/Freelance%20Project/Fiverr/onxyconnect/lib/Screens/Login&Signup/login.dart';
import 'file:///F:/Flutter%20Project/Freelance%20Project/Fiverr/onxyconnect/lib/Screens/Login&Signup/signup.dart';
import 'package:onxyconnect/Splash/Splashscreen.dart';
import 'package:onxyconnect/Screens/Favourite/favouritebar.dart';
import 'package:onxyconnect/Screens/Profile/profile.dart';

void main() {
  runApp(MyApp());
}
BuildContext testContext;


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        accentColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white),
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
    initialRoute:  splashScreen.id,
    routes:<String, WidgetBuilder>{
      splashScreen.id:(context)=>splashScreen(),
      Navscreen.id:(context)=>Navscreen(),
      LoginScreen.id:(context)=>LoginScreen(),
      SignUp.id:(context)=>SignUp(),
      LoginNumber.id:(context)=>LoginNumber(),
      OtpScreen.id:(context)=>OtpScreen(),
      BottomNavBar.id:(context)=> BottomNavBar(),
      Nearby.id:(context)=>Nearby(),
      Popular.id:(context)=> Popular(),
      Chat.id:(context)=> Chat(),
      ShowNearbyAll.id:(context)=>ShowNearbyAll(),
      ShowNearbyLive.id:(context)=>ShowNearbyLive(),
      ShowChatAll.id:(context)=> ShowChatAll(),
      BottomBarScreen.id:(context)=>BottomBarScreen(),
      ShowPk.id:(context)=>ShowPk(),
      Game.id:(context)=>Game(),
      ShowGame.id:(context)=>ShowGame(),
      Explore.id:(context)=>Explore(),
      FavouriteFollow.id:(context)=>FavouriteFollow(),
      FavouriteBar.id:(context)=>FavouriteBar(),
      Profile.id:(context)=>Profile(),
    },
    );
  }
}
