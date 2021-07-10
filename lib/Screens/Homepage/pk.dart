import 'package:flutter/material.dart';
import 'package:onxyconnect/Data/Constant.dart';
import 'package:onxyconnect/Screens/Homepage/chat.dart';
import 'package:onxyconnect/Screens/Homepage/popular.dart';
import 'package:onxyconnect/Screens/ShowScreens/showpk.dart';

import 'game.dart';
import 'nearby.dart';

class PK extends StatefulWidget {
  @override
  _PKState createState() => _PKState();
}

class _PKState extends State<PK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                GestureDetector(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Popular()),
                            (Route<dynamic> route) => true,
                      );
                    },
                    child: Text('Popular',style: Textt2.textStyle(kTertiarycolor, 20),)),

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

                Text('Pk',style: Textt2.textStyle(kPrimarycolor, 20),),

                IconButton(icon: Icon(Icons.search,color: Colors.black45,), onPressed: (){}),
                IconButton(icon: Icon(Icons.notifications_none_outlined,color: Colors.black45,), onPressed: (){}),


              ],
            ),
          ),

          Expanded(
              child: Container(color: kPrimarycolor,
              child: ShowPk(),
              )),

        ],
      ),
    );
  }
}
