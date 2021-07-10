import 'dart:async';

import 'package:flutter/material.dart';
import 'file:///F:/Flutter%20Project/Freelance%20Project/Fiverr/onxyconnect/lib/Screens/Login&Signup/login.dart';
import 'file:///F:/Flutter%20Project/Freelance%20Project/Fiverr/onxyconnect/lib/Screens/Login&Signup/signup.dart';

import 'package:shared_preferences/shared_preferences.dart';
//

class splashScreen extends StatefulWidget {
  static String id = "SplashScreen";
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {


  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);


  }
  void navigationPage() async{

    SharedPreferences pref=  await SharedPreferences.getInstance();
    bool value= pref.containsKey('key');

    if(value==true)
    {
      // send the user to the home page
      Navigator.pushAndRemoveUntil(
        context,

        MaterialPageRoute(
          builder: (BuildContext context) {
            return LoginScreen();
          },
        ),
            (r) => false,
      );
    }
    else
    {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return LoginScreen();
          },
        ),
            (r) => false,
      );
    }

 // Navigator.pushNamed(context, LoginScreen.id);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body:Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/splash.png"),
              fit: BoxFit.fill,)
        ),

      ),
    ));
  }

}
